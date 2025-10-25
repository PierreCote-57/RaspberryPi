import math
import RPi.GPIO as GPIO
import time
import threading
from datetime import datetime

DHTPIN = 17

GPIO.setmode(GPIO.BCM)

MAX_UNCHANGE_COUNT = 100

STATE_INIT_PULL_DOWN = 1
STATE_INIT_PULL_UP = 2
STATE_DATA_FIRST_PULL_DOWN = 3
STATE_DATA_PULL_UP = 4
STATE_DATA_PULL_DOWN = 5

class ReadingHumiture():
    def __init__(self,h, t):
        self.time = time.time()
        self.humidity = h
        self.temperature = t

    def __str__(self):
        str = datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f')
        str += f" H = {self.humidity} %; t = {self.temperature:4.1f} \N{DEGREE SIGN}C"
        return str

class ClientSensorKit():

    # def defines a method/function


    # Constructor
    def __init__(self):

        # Humiture variables
        self.dht11_pin = 17
        self.humiturePeriodSec = 5.0
        self.fnHumitureCallback = None
        self.humidity = None
        self.temperature = None

    # toString
    def __str__(self):
        return super().__str__()

    def startHumiture(self, periodSec):
        self.humiturePeriodSec = periodSec
        # Start on a background thread
        self.thread = threading.Thread(target=ClientSensorKit.humitureThreadLoop, args=(self,), daemon=True)
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
            h = int(result[0])
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

def onHumiture(result):
    h = result.humidity
    t = result.temperature
    print(result)


if __name__ == "__main__":
    client = ClientSensorKit()
    client.setHumitureCallback(onHumiture)
    client.startHumiture(0.5)
    time.sleep(5.0)
