import gc
import sys
import time
import utime
import math
import json

from pimoroni import NORMAL_DIR, REVERSED_DIR
#from pimoroni_yukon import NORMAL_DIR, REVERSED_DIR

from pimoroni_yukon import Yukon
from pimoroni_yukon import SLOT1
from pimoroni_yukon import SLOT2
from pimoroni_yukon import SLOT3
from pimoroni_yukon import SLOT4
from pimoroni_yukon import SLOT5
from pimoroni_yukon import SLOT6
from pimoroni_yukon.modules import BenchPowerModule
from pimoroni_yukon.modules import DualMotorModule
from pimoroni_yukon.modules import DualOutputModule
from pimoroni_yukon.modules import QuadServoRegModule

from pimoroni_yukon.devices.stepper import OkayStepper

# Start fresh
gc.collect()

# Constants
OUTPUT_NAMES = ("Small Fan", "Big Fan")     # The names to give the two outputs when printing
VOLTAGE_LIMIT = 12.5                        # The voltage to not exceed, to protect the outputs

SLOT_LIST = [SLOT1, SLOT2, SLOT3, SLOT4, SLOT5, SLOT5]
MODULE_LIST = [
    # Element 0 is ignore, so the NO match the label on the board
    None,
    None,
    None,
    None,
    None,
    None,
    None
    ]

def initModuleList():
    print(MODULE_LIST)    

    for slot in yukon.find_slots_with(BenchPowerModule):
        print("Servo in ", slot)
        module = BenchPowerModule()
        yukon.register_with_slot(module, slot)
        MODULE_LIST[slot] = module

    for slot in yukon.find_slots_with(DualMotorModule):
        print("Motor in ", slot)
        module = DualMotorModule()
        yukon.register_with_slot(module, slot)
        MODULE_LIST[slot] = module

    for slot in yukon.find_slots_with(DualOutputModule):
        print("Output in ", slot)
        module = DualOutputModule()
        yukon.register_with_slot(module, slot)
        MODULE_LIST[slot] = module

    for slot in yukon.find_slots_with(QuadServoRegModule):
        print("Servo in ", slot)
        module = QuadServoRegModule()
        yukon.register_with_slot(module, slot)
        MODULE_LIST[slot] = module

    print(MODULE_LIST)

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

# Commands are:
# Processor
# Slot (Ignored for BoardProcessor)
# Command
# Parameters

class BoardProcessor:
    # Constructor
    def __init__(self):
        return

    def shutdown(self):
        return

    def __str__(self):
        return f"Yukon board processor"


    def processLine(self, slot, command, lineParts):
        result = None
        if "Clear" == command:
            yukon.set_led(0, 0)
            yukon.set_led(1, 0)
        elif "SetLED" == command:
            led = lineParts[3]
            led = int(led)
            state = lineParts[4]
            state = state.lower() in ['true', 'True', '1', 't', 'y', 'yes', 'yeah', 'yup', 'certainly', 'uh-huh']
            yukon.set_led(led, state)
        elif "Config" == command:
            config = []
            for module in MODULE_LIST:
                config.append(module if None == module else type(module).__name__)
            result = json.dumps(config)
        elif "Prop" == command:
            prop = {}
            prop["led-0"] = yukon.is_led_on(0)
            prop["led-1"] = yukon.is_led_on(1)
            prop["B-1"] = yukon.is_pressed(0)
            prop["B-2"] = yukon.is_pressed(1)
            prop["IsEnabled"] = yukon.is_main_output_enabled()
            prop["Vin"] = yukon.read_input_voltage()
            prop["Vout"] = yukon.read_output_voltage()
            prop["Current"] = yukon.read_current()
            prop["Temperature"] = yukon.read_temperature()
            result = json.dumps(prop)
        else:
            Reporter.reportError(f"Unknown command '{command}'")
            return

        Reporter.reportSuccess(result)

class ServoProcessor:
    # Constructor
    def __init__(self):
        return

    def shutdown(self):
        return

    def __str__(self):
        return f"Yukon SERVO processor"

    def processLine(self, slot, command, lineParts):
        result = None
        module = MODULE_LIST[int(slot)]
        if not isinstance(module, QuadServoRegModule):
            Reporter.reportError(f"Slot has {type(module)}, not QuadServoRegModule")
            return
        channel = int(lineParts[3])
        servo = module.servos[channel]
        if not servo.is_enabled():
            servo.enable()
        if "Set" == command:
            angle = float(lineParts[4])
            servo.value(angle)
            result = servo.value()
        elif "Prop" == command:
            prop = {}
            prop["is_enabled"] = servo.is_enabled()
            prop["value"] = servo.value()
            prop["min_value"] = servo.min_value()
            prop["mid_value"] = servo.mid_value()
            prop["max_value"] = servo.max_value()
            prop["frequency"] = servo.frequency()
            result = json.dumps(prop)
        else:
            Reporter.reportError(f"Unknown command '{command}'")
            return

        Reporter.reportSuccess(result)

class MotorProcessor:
    # Constructor
    def __init__(self):
        return

    def shutdown(self):
        return

    def __str__(self):
        return f"Yukon Motor processor"

    def processLine(self, slot, command, lineParts):
        result = None
        module = MODULE_LIST[int(slot)]
        if not isinstance(module, DualMotorModule):
            Reporter.reportError(f"Slot has {type(module)}, not DualMotorModule")
            return
        channel = int(lineParts[3])
        motor = module.motors[channel]
        if not motor.is_enabled():
            motor.enable()
        if ("Disable" == command):
            motor.disable()
        elif "Set" == command:
            value = float(lineParts[4])
            motor.speed(value)
            result = motor.speed()
        elif "Prop" == command:
            prop = {}
            prop["is_enabled"] = motor.is_enabled()
            prop["speed"] = motor.speed()
            prop["speed_scale"] = motor.speed_scale()
            prop["direction"] = motor.direction()
            prop["zeropoint"] = motor.zeropoint()
            prop["deadzone"] = motor.deadzone()
            result = json.dumps(prop)
        else:
            Reporter.reportError(f"Unknown command '{command}'")
            return

        Reporter.reportSuccess(result)



class PowerProcessor:
    # Constructor
    def __init__(self):
        return

    def shutdown(self):
        return

    def __str__(self):
        return f"Yukon Bench Power processor"

    def processLine(self, slot, command, lineParts):
        result = None
        module = MODULE_LIST[int(slot)]
        if not isinstance(module, BenchPowerModule):
            Reporter.reportError(f"Slot has {type(module)}, not BenchPowerModule")
            return
        
        if not module.is_enabled:
            module.enable()

        if ("Disable" == command):
            print("Disable")
            module.disable()
        elif "Set" == command:
            value = float(lineParts[3])
            module.set_voltage(value)
        elif "Prop" == command:
            prop = {}
            prop["Voltage"] = module.read_voltage()
            prop["Temperature"] = module.read_temperature()
            
            result = json.dumps(prop)
        else:
            Reporter.reportError(f"Unknown command '{command}'")
            return

        Reporter.reportSuccess(result)


def loop():
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

#            print("Looking for processor '" + processorName + "'")
            processor = processorMap[processorName]
        except:
            Reporter.reportError("Unknown processor {}".format(processorName));
            continue

        if None == processor:
            Reporter.reportError("Unknown processor")
            continue;

        slot = int(lineParts[1])
        command = lineParts[2]

        # Process the request
        try:
            result = processor.processLine(slot, command, lineParts);
        except Exception as error:
            Reporter.reportError("Unknown error in processing: {}".format(error))
            continue

# Variables
yukon = Yukon(voltage_limit=VOLTAGE_LIMIT)  # Create a new Yukon object, with a lower voltage limit set
moduleMotor = DualMotorModule()      # Create a DualMotorModule object
modulePower = BenchPowerModule()
moduleServo = QuadServoRegModule()
moduleSwitch = DualOutputModule()       # Create a DualOutputmoduleSwitch object

processorMap = {}
processorMap["Board"] = BoardProcessor()
processorMap["Servo"] = ServoProcessor()
processorMap["Motor"] = MotorProcessor()
processorMap["Power"] = PowerProcessor()

initModuleList()

# Wrap the code in a try block, to catch any exceptions (including KeyboardInterrupt)
try:
    yukon.verify_and_initialise()           # Verify that a DualOutputmoduleSwitch is attached to Yukon, and initialise it
    yukon.enable_main_output()              # Turn on power to the moduleSwitch slots

    for module in MODULE_LIST:
        if None != module:
            module.enable()

    # Initial configuration
    yukon.set_led(0, True)                     # Set the button LED to match
    MODULE_LIST[1].set_voltage(5.0)

    loop()
finally:
    # Put the board back into a safe state, regardless of how the program may have ended
    yukon.reset()

print("Exiting")
