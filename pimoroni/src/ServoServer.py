
import sys
import time

from machine import Pin
from pimoroni import Analog, AnalogMux, Button
from plasma import WS2812
from servo import Servo, servo2040

# Utility methods
class Reporter:
    @staticmethod
    def reportSuccess(result):
        Reporter.reportResult("OK", result)

    @staticmethod
    def reportError(result):
        Reporter.reportResult("KO", result)

    @staticmethod
    def reportResult(status, result):
        if (None == result):
            message =f"{status}\n"
        else:
            message = f"{status},{result}\n"
        sys.stdout.write(bytes(message, "utf-8"))
        return




# Light number is 0-5 for LED labelled 1-6
class LightProcessor:
    # Constructor
    def __init__(self):
        # Create the LED bar, using PIO 1 and State Machine 0
        self.led_bar = WS2812(servo2040.NUM_LEDS, 1, 0, servo2040.LED_DATA)

        # Create the user button
        self.user_sw = Button(servo2040.USER_SW)

        # Start updating the LED bar
        self.led_bar.start()
        return

    def shutdown(self):
        self.led_bar.clear()

    def __str__(self):
        return f"LightProcessor for {servo2040.NUM_LEDS} lights"

    def processLine(self, lineParts):
        command = lineParts[1]
        result = None
        if "Clear" == command:
            self.led_bar.clear()
        else:
            no = int(lineParts[2])
            if (0 > no or servo2040.NUM_LEDS <= no):
                Reporter.reportError(f"Light number is limited to [0, {servo2040.NUM_LEDS - 1}]")
                return
            if "SetHSV" == command:
                h = float(lineParts[3])
                s = float(lineParts[4])
                v = float(lineParts[5])
                self.led_bar.set_hsv(no, h, s, v)
                result = self.led_bar.get(no)
            elif "SetRGB" == command:
                r = int(lineParts[3])
                g = int(lineParts[4])
                b = int(lineParts[5])
                self.led_bar.set_rgb(no, r, g, b)
                result = self.led_bar.get(no)
            elif "Get" == command:
                result = self.led_bar.get(no)
            else:
                Reporter.reportError("Unknown command '{}'".format(command))

        Reporter.reportSuccess(result)

# Channels are:
#  Volt
#  Amp
#  0-5, for pins labelled 1-6
class SensorProcessor:
    def __init__(self):
        # Set up the shared analog inputs
        self.sen_adc = Analog(servo2040.SHARED_ADC)
        self.vol_adc = Analog(servo2040.SHARED_ADC, servo2040.VOLTAGE_GAIN)
        self.cur_adc = Analog(servo2040.SHARED_ADC, servo2040.CURRENT_GAIN,
                         servo2040.SHUNT_RESISTOR, servo2040.CURRENT_OFFSET)

        # Set up the analog multiplexer, including the pin for controlling pull-up/pull-down
        self.mux = AnalogMux(servo2040.ADC_ADDR_0, servo2040.ADC_ADDR_1, servo2040.ADC_ADDR_2,
                        muxed_pin=Pin(servo2040.SHARED_ADC))

        # Set up the sensor addresses and have them pulled down by default
        self.sensor_addrs = list(range(servo2040.SENSOR_1_ADDR, servo2040.SENSOR_6_ADDR + 1))
        for addr in self.sensor_addrs:
#            print("Setting up address ", addr)
            self.mux.configure_pull(addr, Pin.PULL_DOWN)

    def shutdown(self):
        # Nothing to do
        return

    def __str__(self):
        return "SensorProcessor"

    def processLine(self, lineParts):
        command = lineParts[1]
        if ("Volt" == command):
            self.mux.select(servo2040.VOLTAGE_SENSE_ADDR)
            result = self.vol_adc.read_voltage()
        elif ("Amp" == command):
            self.mux.select(servo2040.CURRENT_SENSE_ADDR)
            result = self.cur_adc.read_current();
        elif ("Prop" == command):
            self.mux.select(0)
            prop = {}
            prop["Gain"] = self.cur_adc.gain
            prop["Offset"] = self.cur_adc.offset
            prop["Resistor"] = self.cur_adc.resistor
            result = prop
        else:
            channel = lineParts[1]
            try:
                channel = int(channel)
            except:
                Reporter.reportError("Invalid channel {}".format(channel))
                return

            if (channel < 0 or len(self.sensor_addrs) <= channel):
                Reporter.reportError("Channel must be [0-{0}] ; not {1}".format((len(self.sensor_addrs) - 1), channel))
                return

            self.mux.select(channel)
            result = self.vol_adc.read_voltage()

        # If made it here, result is the success answer
        Reporter.reportSuccess(result)
    

# Servos are 0-17 for labels 1-18
class ServoProcessor:
    def __init__(self):
        self.servoMap = {}
        
    def shutdown(self):
        for key, servo in self.servoMap.items():
            print("Shutting down servo", key, " -> ", servo)
            servo.disable()


    def __str__(self):
        return f"ServoProcessor with {len(self.servoMap)} active servos"

    def processLine(self, lineParts):
        command = lineParts[1]
        channel = int(lineParts[2])
        servo = self.ensureServo(channel)

        if ("Set" == command):
            angle = float(lineParts[3])
            servo.value(angle)
            result = angle
        elif ("Get" == command):
            angle = servo.value()
            result = angle
        elif ("Prop" == command):
            prop = {}
            prop["Pin"] = servo.pin()
            prop["Min"] = servo.min_value()
            prop["Mid"] = servo.mid_value()
            prop["Max"] = servo.max_value()
            prop["Value"] = servo.value()
            prop["Pulse"] = servo.pulse()
            prop["Frequency"] = servo.frequency()
            prop["Calibration"] = servo.calibration()
            result = prop
        else:
            Reporter.reportError(f"Unknown ommand {command}")
        Reporter.reportSuccess(result)


    def ensureServo(self, channel):
        try:
            servo = self.servoMap[channel]
#            print(f"Channel {channel} has servo {servo}")
        except:
            # Servo not initialized
            servo = Servo(channel)
            servo.enable()
            self.servoMap[channel] = servo
        return servo


processorMap = {}
processorMap["Light"] = LightProcessor()
processorMap["Sensor"] = SensorProcessor()
processorMap["Servo"] = ServoProcessor()


chDollar = "$"
user_sw = Button(servo2040.USER_SW)

while 1 == 1:
    # Read a line/command
    try:
        line = sys.stdin.readline()
    except:
        break
    

    if (0 == len(line)):
        continue
    
    # Basic validation
    if (not line.startswith(chDollar)):
        # Ignore these lines
        continue
        
    lineParts = line.strip().split(",")
 
    # Find a processor
    try:
        processorName = lineParts[0].replace("$", "");
        if ("Stop" == processorName):
            print("Exiting")
            break

#        print("Looking for processor '" + processorName + "'")
        processor = processorMap[processorName]
    except:
        Reporter.reportError("Unknown processor {}".format(processorName));
        continue

    if None == processor:
        Reporter.reportError("Unknown processor")
        continue;

    # Process the request
    try:
        result = processor.processLine(lineParts);
    except Exception as error:
        Reporter.reportError("Unknown error in processing: {}".format(error))
        continue

for key, value in processorMap.items():
    print("Shutting down processor ", key, " -> ", value)
    value.shutdown()

print("Exiting")
