import math
import RPi.GPIO as GPIO
import time
import threading
import LCD1602
from datetime import datetime

DHTPIN = 17

GPIO.setmode(GPIO.BCM)

MAX_UNCHANGE_COUNT = 100

STATE_INIT_PULL_DOWN = 1
STATE_INIT_PULL_UP = 2
STATE_DATA_FIRST_PULL_DOWN = 3
STATE_DATA_PULL_UP = 4
STATE_DATA_PULL_DOWN = 5

TRIG = 19
ECHO = 20

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
        self.dht11_pin = 17
        self.humiturePeriodSec = 30.0
        self.fnHumitureCallback = None
        self.readingHumiture = None

    # toString
    def __str__(self):
        return self.readingHumiture

    def startHumiture(self, periodSec):
        self.humiturePeriodSec = periodSec
        # Start on a background thread
        self.thread = threading.Thread(target=ClientHumiture.humitureThreadLoop, args=(self,), daemon=True)
        self.thread.name = "Hum iture"
        self.thread.daemon = True
        self.thread.start()
        pass
        return

    def humitureThreadLoop(self):
        while True:
            self.readHumiture()
            time.sleep(self.humiturePeriodSec)

    def setHumitureCallback(self, fn, ):
        self.fnHumitureCallback = fn
    def readHumiture(self):
        result = self.read_dht11_dat()
        if result:
            # Success reading the bit stream
            h = int(result[0]) + int(result[1]) / 10.0
            t = int(result[2]) + int(result[3]) / 10.0
            self.readingHumiture = ReadingHumiture(h, t)
            if None != self.fnHumitureCallback:
                self.fnHumitureCallback(self.readingHumiture)
            return self.readingHumiture
        return None

    def read_dht11_dat(self):
        # Begin start sequence

        # First HIGH
        # We "setup" the GPIO pin as output, and we specify the level at the same time.
        # This avoids a delay between setting up the pin and setting the level
        GPIO.setup(self.dht11_pin, GPIO.OUT, initial=GPIO.HIGH)
        time.sleep(0.05)
     
        # Then, LOW for at least 18ms (we use 0.02s which is 20ms)
        GPIO.output(self.dht11_pin, GPIO.LOW)
        time.sleep(0.02)

        # Wait for the response from DHT11.
        # (No pull-up needed, they are already installed on the sensor board)
        #GPIO.setup(self.dht11_pin, GPIO.IN)
        # The following line does the same but activates the pull-up some DHT11 board need (not ours!)
        GPIO.setup(self.dht11_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

        unchanged_count = 0
        last = -1
        data = []
        while True:
            current = GPIO.input(DHTPIN)
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
#            print ("Data not good, skip")
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
#            print ("Data not good, skip")
            return False
        return the_bytes
#        return the_bytes[0], the_bytes[2], the_bytes[3]

    def testHumiture(self):
        while True:
            # Do this until one reading
            result = self.readHumiture()
            if result:
                onHumiture(result)
                break
            time.sleep(0.5)

# Speed of sound: 334 m/s @ 20 deg C
# Theoretical max range: 4 meters
# 10 meters = 0.03 sec = 30 ms
# One loop ~ 15us -> 10m = 2,000 loops
class ClientRange():
    def __init__(self):
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(TRIG, GPIO.OUT)
        GPIO.setup(ECHO, GPIO.IN)

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
        GPIO.output(TRIG, 0)
        time.sleep(0.000002)

        GPIO.output(TRIG, 1)
        time.sleep(0.00001)
        #	time.sleep(5.0)
        GPIO.output(TRIG, 0)


        while GPIO.input(ECHO) == 0:
            a = 0
        time1 = time.time()
        i = 0
        while GPIO.input(ECHO) == 1 and i < 2_000:
            i = i + 1
        time2 = time.time()
        duration = time2 - time1
        return duration, i

    def testRange(self):
        for i in range(4):
            reading = self.measure()
            print(reading)
            time.sleep(1.0)

# DIsplay is LCD1602
class ClientDisplay():
    def __init__(self):
        LCD1602.init(0x27, 1)	# init(slave address, background light)

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
        client.write(0, 1, "0123456789012345")

# The MPU-6050
class ClientGyroscope():
    def __init__(self):
        pass



def onHumiture(result):
    h = result.humidity
    t = result.temperature
    print(result)


if __name__ == "__main__":
    client = ClientHumiture()
    client.setHumitureCallback(onHumiture)
    client.startHumiture(1.0)
#    time.sleep(5.0)

    client = ClientRange()
#    client.testRange()

    client = ClientDisplay()
    client.test()
