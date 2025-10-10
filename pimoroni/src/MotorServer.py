import gc
import sys
import time
import utime
import math

from plasma import WS2812
from motor import Motor, motor2040
from pimoroni import Button  # , REVERSED_DIR
from encoder import Encoder, MMME_CPR


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
        self.led = WS2812(motor2040.NUM_LEDS, 1, 0, motor2040.LED_DATA)

        # Create the user button
        self.user_sw = Button(motor2040.USER_SW)

        # Start updating the LED bar
        self.led.start()
        return

    def shutdown(self):
        self.led.clear()

    def __str__(self):
        return f"LightProcessor for {motor2040.NUM_LEDS} lights"

    def processLine(self, lineParts):
        command = lineParts[1]
        result = None
        if "Clear" == command:
            self.led.clear()
        else:
            no = int(lineParts[2])
            if (0 > no or motor2040.NUM_LEDS <= no):
                Reporter.reportError(f"Light number is limited to [0, {motor2040.NUM_LEDS - 1}]; you asked for {no}")
                return
            if "SetHSV" == command:
                h = float(lineParts[3])
                s = float(lineParts[4])
                v = float(lineParts[5])
                self.led.set_hsv(no, h, s, v)
                result = self.led.get(no)
            elif "SetRGB" == command:
                r = int(lineParts[3])
                g = int(lineParts[4])
                b = int(lineParts[5])
                self.led.set_rgb(no, r, g, b)
                result = self.led.get(no)
            elif "Get" == command:
                result = self.led.get(no)
            else:
                Reporter.reportError("Unknown command '{}'".format(command))

        Reporter.reportSuccess(result)

# Channels are:
#  Volt
#  Amp
#  0-5, for pins labelled 1-6
class MotorProcessor:
    def __init__(self):
        pass

    def shutdown(self):
        # Nothing to do
        return

    def __str__(self):
        return "MotorProcessor"

    def processLine(self, lineParts):
        command = lineParts[1]
        if ("Speed" == command):
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
class EncoderProcessor:
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
        motor = self.ensureMotor(channel)

        if ("Set" == command):
            angle = float(lineParts[3])
            motor.value(angle)
            result = angle
        elif ("Get" == command):
            angle = motor.value()
            result = angle
        elif "Close" == command:
            motor.value(0.0)
            motor.disable()
            self.servoMap.pop(channel, None)
            result = None
        elif "Prop" == command:
            prop = {}
            prop["Pin"] = motor.pin()
            prop["Min"] = motor.min_value()
            prop["Mid"] = motor.mid_value()
            prop["Max"] = motor.max_value()
            prop["Value"] = motor.value()
            prop["Pulse"] = motor.pulse()
            prop["Frequency"] = motor.frequency()
            prop["Calibration"] = motor.calibration()
            result = prop
        else:
            Reporter.reportError(f"Unknown ommand {command}")
        Reporter.reportSuccess(result)


    def ensureMotor(self, channel):
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
processorMap["Sensor"] = MotorProcessor()
processorMap["Servo"] = EncoderProcessor()


chDollar = "$"

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
