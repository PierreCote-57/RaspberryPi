import math
import RPi.GPIO as GPIO
import time
import threading
from datetime import datetime

import LCD1602
from LocalWorld import LocalHardware

GPIO.setmode(GPIO.BCM)

MAX_UNCHANGE_COUNT = 100

STATE_INIT_PULL_DOWN = 1
STATE_INIT_PULL_UP = 2
STATE_DATA_FIRST_PULL_DOWN = 3
STATE_DATA_PULL_UP = 4
STATE_DATA_PULL_DOWN = 5

class ReadingHumiture():
    def __init__(self, h, t):
        self.time = time.time()
        self.humidity = h
        self.temperature = t

    def __str__(self):
        str = datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f')
        str += f" H = {self.humidity} %; t = {self.temperature:4.1f} \N{DEGREE SIGN}C"
        return str

class ReadingRange():
    def __init__(self, count, duration, speed, distance):
        self.time = time.time()
        self.count = count
        self.duration = duration
        self.speed = speed
        self.distance = distance

    def __str__(self):
        str = datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f')
        str += f" t = {self.duration * 1000:6,.3f} ms; v = {self.speed:4.1f} m/s; d = {self.distance:5.3f} m"
        return str

# Humiture uses the DHT-11 sensor
# Upon trigger (Low -> High, ),
# returns a series of 5 * 8 bits (inc. checksum)
class ClientHumiture():

    # Constructor
    def __init__(self):

        # Humiture variables
        self.pinPower = LocalHardware.getGpioPin("Humiture Power")
        self.pinSignal = LocalHardware.getGpioPin("Humiture Signal")
        self.humiturePeriodSec = None
        self.fnHumitureCallback = None
        self.readingHumiture = None
        GPIO.setup(self.pinPower, GPIO.OUT, initial=GPIO.LOW)

    # toString
    def __str__(self):
        return self.readingHumiture

    def startHumiture(self, periodSec):
        self.humiturePeriodSec = periodSec
        # Start on a background thread
        self.thread = threading.Thread(target=ClientHumiture.humitureThreadLoop, args=(self,), daemon=True)
        self.thread.name = "Humiture"
        self.thread.daemon = True
        self.thread.start()
        return

    def stop(self):
        self.thread = None

    def humitureThreadLoop(self):
        while None != self.thread:
            self.readHumiture()
            time.sleep(self.humiturePeriodSec)

    def setHumitureCallback(self, fn, ):
        self.fnHumitureCallback = fn
    def readHumiture(self):
        GPIO.output(self.pinPower, GPIO.HIGH)
        time.sleep(2.0)
        result = self.readData()
        GPIO.output(self.pinPower, GPIO.LOW)
        if result:
            # Success reading the bit stream
            h = int(result[0]) + int(result[1]) / 10.0
            t = int(result[2]) + int(result[3]) / 10.0
            self.readingHumiture = ReadingHumiture(h, t)
            if None != self.fnHumitureCallback:
                self.fnHumitureCallback(self.readingHumiture)
            return self.readingHumiture
        return None

    def readData(self):
        # Begin start sequence

        # First HIGH
        # We "setup" the GPIO pin as output, and we specify the level at the same time.
        # This avoids a delay between setting up the pin and setting the level
        GPIO.setup(self.pinSignal, GPIO.OUT, initial=GPIO.HIGH)
        time.sleep(0.05)
     
        # Then, LOW for at least 18ms (we use 0.02s which is 20ms)
        GPIO.output(self.pinSignal, GPIO.LOW)
        time.sleep(0.02)

        # Wait for the response from DHT11.
        # (No pull-up needed, they are already installed on the sensor board)
        #GPIO.setup(self.dht11_pin, GPIO.IN)
        # The following line does the same but activates the pull-up some DHT11 board need (not ours!)
        GPIO.setup(self.pinSignal, GPIO.IN, pull_up_down=GPIO.PUD_UP)

        unchanged_count = 0
        last = -1
        data = []
        while True:
            current = GPIO.input(self.pinSignal)
            data.append(current)
            if last != current:
                unchanged_count = 0
                last = current
            else:
                unchanged_count += 1
                if unchanged_count > MAX_UNCHANGE_COUNT:
                    break

        state = STATE_INIT_PULL_DOWN

        lengths = []
        current_length = 0

        for current in data:
            current_length += 1

            if state == STATE_INIT_PULL_DOWN:
                if current == GPIO.LOW:
                    state = STATE_INIT_PULL_UP
                else:
                    continue
            if state == STATE_INIT_PULL_UP:
                if current == GPIO.HIGH:
                    state = STATE_DATA_FIRST_PULL_DOWN
                else:
                    continue
            if state == STATE_DATA_FIRST_PULL_DOWN:
                if current == GPIO.LOW:
                    state = STATE_DATA_PULL_UP
                else:
                    continue
            if state == STATE_DATA_PULL_UP:
                if current == GPIO.HIGH:
                    current_length = 0
                    state = STATE_DATA_PULL_DOWN
                else:
                    continue
            if state == STATE_DATA_PULL_DOWN:
                if current == GPIO.LOW:
                    lengths.append(current_length)
                    state = STATE_DATA_PULL_UP
                else:
                    continue
        if len(lengths) != 40:
            print (f"Not enough bits at {len(lengths)}")
            return False

        shortest_pull_up = min(lengths)
        longest_pull_up = max(lengths)
        halfway = (longest_pull_up + shortest_pull_up) / 2
        bits = []
        the_bytes = []
        byte = 0

        for length in lengths:
            bit = 0
            if length > halfway:
                bit = 1
            bits.append(bit)
        #print ("bits: %s, length: %d" % (bits, len(bits)))
        for i in range(0, len(bits)):
            byte = byte << 1
            if (bits[i]):
                byte = byte | 1
            else:
                byte = byte | 0
            if ((i + 1) % 8 == 0):
                the_bytes.append(byte)
                byte = 0
        #print (the_bytes)
        checksum = (the_bytes[0] + the_bytes[1] + the_bytes[2] + the_bytes[3]) & 0xFF
        if the_bytes[4] != checksum:
            print (f"Invalid checksum: Expected {the_bytes[4]}, but got {checksum}")
            return False
        return the_bytes
#        return the_bytes[0], the_bytes[2], the_bytes[3]

    def testHumiture(self):
        count = 0
        while count < 3:
            # Do this until one reading
            result = self.readHumiture()
            if result:
                print(result)
                count = count + 1
            time.sleep(0.5)

    def testHumitureThread(self):
        self.setHumitureCallback(onHumiture)
        self.startHumiture(5)
        time.sleep(30)
        self.stop()

# Speed of sound: 334 m/s @ 20 deg C
# Theoretical max range: 4 meters
# 10 meters = 0.03 sec = 30 ms
# One loop ~ 15us -> 10m = 2,000 loops
class ClientRange():
    pinTrigger = LocalHardware.getGpioPin("Distance.trigger") # 19
    pinEcho = LocalHardware.getGpioPin("Distance.echo") # 20

    def __init__(self):
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(ClientRange.pinTrigger, GPIO.OUT)
        GPIO.setup(ClientRange.pinEcho, GPIO.IN)

    @staticmethod
    def getSpeedOfSound(temp = 20):
        return 331.5 + temp * 0.59

    def measure(self):
        duration, count = self.measureDuration()
        speed = ClientRange.getSpeedOfSound()
        distance = speed * duration / 2
        reading = ReadingRange(count, duration, speed, distance)
        return reading;
    def measureDuration(self):
        GPIO.output(ClientRange.pinTrigger, 0)
        time.sleep(0.000002)

        GPIO.output(ClientRange.pinTrigger, 1)
        time.sleep(0.00001)
        #	time.sleep(5.0)
        GPIO.output(ClientRange.pinTrigger, 0)


        while GPIO.input(ClientRange.pinEcho) == 0:
            a = 0
        time1 = time.time()
        i = 0
        while GPIO.input(ClientRange.pinEcho) == 1 and i < 2_000:
            i = i + 1
        time2 = time.time()
        duration = time2 - time1
        return duration, i

    def testRange(self):
        for i in range(4):
            reading = self.measure()
            print(reading)
            time.sleep(1.0)

# Display is LCD1602
class ClientDisplay():
    def __init__(self):
        channel = LocalHardware.getI2CChannel("Display")
        LCD1602.init(channel, 1)	# init(slave address, background light)

    def writeLeft(self, y, text):
        self.write(0, y, text)

    def writeRight(self, y, text):
        self.write(16 - len(text), y, text)
    def writeMiddle(self, y, text):
        self.write(8 - int(len(text) / 2), y, text)

    def write(self, x, y, text):
        LCD1602.write(x, y, text)

    def test(self):
        client.writeLeft(0, "L234")
        client.writeMiddle(0, "M234")
        client.writeRight(0, "R234")
#        str = datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f')
        str = datetime.fromtimestamp(time.time()).strftime('%H:%M:%S')
        client.writeMiddle(1, str)

class ClientTracker():
    pin = LocalHardware.getGpioPin("Tracker")

    def __init__(self):
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(ClientTracker.pin, GPIO.IN)
        self.counterRising = 0;
        self.counterFalling = 0;

        self.timeCount = 10
        self.timeNext = 0
        self.timeList = []

#        GPIO.add_event_detect(ClientTracker.pin, GPIO.RISING, callback=self.callbackRising)
        GPIO.add_event_detect(ClientTracker.pin, GPIO.FALLING, callback=self.callbackFalling)

    # 0 == black; 1 = white
    # rising = to Black
    def callbackRising(self, channel):
        self.counterRising += 1
        self.mark()

    # Falling = to White
    def callbackFalling(self, channel):
        self.counterFalling += 1
        self.mark()

    def mark(self):
        timeNow = time.time()
        if len(self.timeList) < self.timeCount:
            self.timeList.append(timeNow)
        else:
            self.timeList[self.timeNext] = timeNow
            self.timeNext += 1
            if self.timeNext >= self.timeCount:
                self.timeNext = 0
#        print(self.timeList)

    def read(self):
        return GPIO.input(self.pin)
        
    def test(self):
        for i in range(100):
            value = self.read()
            print(f"Value  = {value}; Rising {self.counterRising:3d}; Falling {self.counterFalling:3d}")
            time.sleep(1.0)

#        for i in range(len(self.timeList) - 2):
#            delta = self.timeList[i + 1] - self.timeList[i]
#            print(f"Delta = {delta:6.3f}")

# The MPU-6050
class ClientGyroscope():
    def __init__(self):
        pass



def onHumiture(result):
    h = result.humidity
    t = result.temperature
    print(result)


if __name__ == "__main__":
    if 1 == 1:
        client = ClientDisplay()
        client.test()

    if 1 == 2:
        client = ClientHumiture()
        client.testHumiture()
#        client.testHumitureThread()

    if 1 == 2:
        client = ClientRange()
        client.testRange()

    if 1 == 2:
        client = ClientTracker()
        client.test()

    print("Done")
