
import sys

from pimoroni import Button
from plasma import WS2812
from servo import servo2040


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

    def processLine(self, lineParts):
        command = lineParts[1]
        command = command.strip()
        if "Clear" == command:
            print("Processing Clear")
            self.led_bar.clear()
            return None;
        elif "SetHSV" == command:
            no = int(lineParts[2])
            h = float(lineParts[3])
            s = float(lineParts[4])
            v = float(lineParts[5])
            self.led_bar.set_hsv(no, h, s, v)
            return None;
        else:
            return "Unknown command '" + command + "'"


processorMap = {}
p1 = LightProcessor()
processorMap["Light"] = LightProcessor()


def reportResult(result):
    if None == result:
        reportSuccess()
    else:
        reportError(result)


def reportSuccess():
    sys.stdout.write("OK\n")
    return


def reportError(reason):
    sys.stdout.write("KO," + reason + "\n")
    return


chDollar = "$"

while 1 == 1:
    # Read a line/command
    line = sys.stdin.readline()
    if (0 == len(line)):
        continue
    
    # Basic validation
    if (not line.startswith(chDollar)):
        # Ignore these lines
        #reportResult("Invalid line start")
        continue
        
    lineParts = line.split(",")
    print("lineParts = ", lineParts)
    if (len(lineParts) < 2):
        reportResult("Not enough parameters");
        continue;
 
    # Find a processor
    try:
        processorName = lineParts[0].replace("$", "");
        print("Looking for processor '" + processorName + "'")
        processor = processorMap[processorName]
    except:
        reportResult("Unknown processor");
        continue
    if None == processor:
        reportResult("Unknown processor")
        continue;

    # Process the request
    try:
        result = processor.processLine(lineParts);
        reportResult(result)
    except:
        reportResult("Unknown error in processing")
        continue

