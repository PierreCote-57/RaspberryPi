import gc
import sys
import time
import utime
import math
import json

from plasma import WS2812
from motor import Motor, motor2040
from pimoroni import Button  # , REVERSED_DIR
from encoder import Encoder, MMME_CPR

# Start fresh
gc.collect()

GEAR_RATIO = 50                         # The gear ratio of the motor
COUNTS_PER_REV = MMME_CPR * GEAR_RATIO  # The counts per revolution of the motor's output shaft

NAME_LIST = ["A", "B", "C", "D"]
MOTOR_PINS = [motor2040.MOTOR_A, motor2040.MOTOR_B, motor2040.MOTOR_C, motor2040.MOTOR_D]
ENCODER_PINS = [motor2040.ENCODER_A, motor2040.ENCODER_B, motor2040.ENCODER_C, motor2040.ENCODER_D]
NUM_MOTORS = len(ENCODER_PINS)

ENCODER_LIST = [Encoder(0, i, ENCODER_PINS[i], counts_per_rev=COUNTS_PER_REV, count_microsteps=True) for i in range(NUM_MOTORS)]

MOTOR_LIST = [Motor(MOTOR_PINS[i]) for i in range(NUM_MOTORS)]

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
                Reporter.reportError(f"Unknown command '{command}'")

        Reporter.reportSuccess(result)

# Channels are:
#  Volt
#  Amp
#  0-5, for pins labelled 1-6
class MotorProcessor:
    def __init__(self):
        pass

    def shutdown(self):
        for m in MOTOR_LIST:
            m.disable()
        # Nothing to do
        return

    def __str__(self):
        return f"MotorProcessor with {NUM_MOTORS} encoder motors"

    def processLine(self, lineParts):
        command = lineParts[1]
        channel = lineParts[2]
        try:
            channel = int(channel)
        except:
            Reporter.reportError("Invalid channel {}".format(channel))
            return

        if (channel < 0 or NUM_MOTORS <= channel):
            Reporter.reportError(f"Channel must be [0-{NUM_MOTORS - 1}] ; not {channel}")
            return
        
        motor = MOTOR_LIST[channel]
        if ("Disable" == command):
            motor.disable()
        else:
            if not motor.is_enabled():
                motor.enable()

            result = None
            if ("Brake" == command):
                motor.brake()
            elif ("Coast" == command):
                motor.coast()
            elif ("SetDuty" == command):
                duty = float(lineParts[3])
                motor.duty(duty)
                result = motor.duty()
            elif ("SetPercent" == command):
                pct = float(lineParts[3])
                motor.to_percent(pct)
            elif ("SetSpeed" == command):
                speed = float(lineParts[3])
                motor.speed(speed)
                result = motor.speed()
            elif ("Stop" == command):
                motor.stop()
            elif ("Prop" == command):
                if 1 == 2:
                    m = MOTOR_LIST[0]
                    print(m)
                    print(dir(m))
                    print("deadzone", m.deadzone())
                    print("decay_mode", m.decay_mode())
                    print("direction", m.direction())
                    print("frequency", m.frequency())
                    print("is_enabled", m.is_enabled())
                    print("pins", m.pins())
                    print("speed", m.speed())
                    print("speed_scale", m.speed_scale())
                    print("zeropoint", m.zeropoint())

                prop = {}
                prop["deadzone"] = motor.deadzone()
                prop["decay_mode"] = motor.decay_mode()
                prop["duty"] = motor.duty()
                prop["direction"] = motor.direction()
                prop["frequency"] = motor.frequency()
#                prop["full_positive"] = motor.full_positive()
#                prop["full_negative"] = motor.full_negative()
                prop["is_enabled"] = motor.is_enabled()
                prop["pins"] = motor.pins()
                prop["speed"] = motor.speed()
                prop["speed_scale"] = motor.speed_scale()
                prop["zeropoint"] = motor.zeropoint()
                result = prop
            else:
                Reporter.reportError(f"Unknown command {command}")

        # If made it here, result is the success answer
        Reporter.reportSuccess(result)
    

# Servos are 0-17 for labels 1-18
class EncoderProcessor:
    def __init__(self):
        self.servoMap = {}
        
    def shutdown(self):
        pass

    def __str__(self):
        return f"EncoderProcessor with {NUM_MOTORS} encoders"

    def processLine(self, lineParts):
        command = lineParts[1]
        channel = int(lineParts[2])
        encoder = ENCODER_LIST[channel]


#        utime.sleep_ms(15_000)

        result = None
        if "GetCount" == command:
            result = encoder.count()
        elif "GetDegrees" == command:
            result = encoder.degrees()
        elif "Zero" == command:
            encoder.zero()
        elif "State" == command:
            result = encoder.state()
        elif "MoveDegrees" == command:
            deg = float(lineParts[3])
            speed = float(lineParts[4]) if 5 <= len(lineParts) else None
            EncoderProcessor.moveDegrees(channel, deg, speed)
            result = encoder.degrees()
        elif "MoveCount" == command:
            count = float(lineParts[3])
            speed = float(lineParts[4]) if 5 <= len(lineParts) else None
            EncoderProcessor.moveCount(channel, count, speed)
            result = encoder.count()
            
        elif "Capture" == command:
            cap = encoder.capture()
            if 1 == 1:
                print(dir(cap))
            prop = {}
            prop["count"] = cap.count;
            prop["delta"] = cap.delta;
            prop["frequency"] = cap.frequency;
            prop["counts_per_rev"] = encoder.counts_per_rev()

            prop["degrees"] = cap.degrees
            prop["degrees_delta"] = cap.degrees_delta
            prop["degrees_per_second"] = cap.degrees_per_second

            prop["revoputions"] = cap.revolutions
            prop["revolutions_delta"] = cap.revolutions_delta
            prop["revolutions_per_second"] = cap.revolutions_per_second
            result = prop
#            prop["common_pin"] = encoder.common_pin()
        elif "Prop" == command:
#            print(dir(encoder))
            prop = {}
#            prop["common_pin"] = encoder.common_pin()
            prop["count"] = encoder.count()
            prop["counts_per_rev"] = encoder.counts_per_rev()
            prop["degrees"] = encoder.degrees()
            prop["delta"] = encoder.delta()
            prop["direction"] = encoder.direction()
            prop["pins"] = encoder.pins()
            prop["radians"] = encoder.radians()
            prop["revolutions"] = encoder.revolutions()
            prop["step"] = encoder.step()
            prop["turn"] = encoder.turn()
            result = prop
        else:
            Reporter.reportError(f"Unknown command {command}")
        Reporter.reportSuccess(result)

    @staticmethod
    def countFromDegrees(channel, degrees):
        e = ENCODER_LIST[channel]
        cpr = e.counts_per_rev()
        count = (degrees / 360.0) * cpr
        return count

    @staticmethod
    def moveDegrees(channel, deg, speed):
        count = EncoderProcessor.countFromDegrees(channel, deg)
        EncoderProcessor.moveCount(channel, count, speed)
        

    @staticmethod
    def moveCount(channel, count, speed):
        m = MOTOR_LIST[channel]
        if not m.is_enabled():
            m.enable()
        e = ENCODER_LIST[channel]
        # Presumably, the motor is stopped
        countStart = e.count()
        countTarget = countStart + count
        m.speed(speed if None != speed else 0.1)
        while countTarget > e.count():
            pass
        m.stop()



processorMap = {}
processorMap["Light"] = LightProcessor()
processorMap["Motor"] = MotorProcessor()
processorMap["Encoder"] = EncoderProcessor()


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
