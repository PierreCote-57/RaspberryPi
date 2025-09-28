
import sys

from machine import Pin
from pimoroni import Analog, AnalogMux, Button
from plasma import WS2812
from servo import servo2040

# Utility methods
class Reporter:
    @staticmethod
    def reportResult(result):
        if None == result:
            Reporter.reportSuccess(None)
        else:
            Reporter.reportError(result)

    @staticmethod
    def reportSuccess(result):
        if (None == result):
            message ="OK\n"
        else:
            message = "OK,{}\n".format(result)
        sys.stdout.write(bytes(message, "utf-8"))
        return

    @staticmethod
    def reportError(result):
        message = "KO,{}\n".format(result)
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
        command = command.strip()
        result = None
        if "Clear" == command:
            self.led_bar.clear()
        elif "SetHSV" == command:
            no = int(lineParts[2])
            h = float(lineParts[3])
            s = float(lineParts[4])
            v = float(lineParts[5])
            self.led_bar.set_hsv(no, h, s, v)
        else:
            result = "Unknown command '{}'".format(command)
        Reporter.reportResult(result)

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
        command = command.strip()
        if ("Volt" == command):
            self.mux.select(servo2040.VOLTAGE_SENSE_ADDR)
            result = self.vol_adc.read_voltage()
        elif ("Amp" == command):
            self.mux.select(servo2040.CURRENT_SENSE_ADDR)
            result = self.cur_adc.read_current();
        else:
            channel = lineParts[1].strip()
            try:
                channel = int(channel)
            except:
                Reporter.reportError("Invalid channel {}".format(channel))
                return

            if (channel < 0 or len(self.sensor_addrs) <= channel):
                Reporter.reportError("Channel must be [0-{0}] ; not {1}".format((len(self.sensor_addrs) - 1), channel))
                return

            self.mux.select(self.sensor_addrs[channel])
            result = self.sen_adc.read_voltage()

        Reporter.reportSuccess(result)



processorMap = {}
processorMap["Light"] = LightProcessor()
processorMap["Sensor"] = SensorProcessor()


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
        #reportResult("Invalid line start")
        continue
        
    lineParts = line.split(",")
 
    # Find a processor
    try:
        processorName = lineParts[0].replace("$", "").strip();
        if ("Stop" == processorName):
            print("Exiting")
            break

#        print("Looking for processor '" + processorName + "'")
        processor = processorMap[processorName]
    except:
        Reporter.reportFailure("Unknown processor {}".format(processorName));
        continue

    if None == processor:
        Reporter.reportFailure("Unknown processor")
        continue;

    # Process the request
    try:
        result = processor.processLine(lineParts);
    except Exception as error:
        Reporter.reportFailure("Unknown error in processing: {}".format(error))
        continue

for key, value in processorMap.items():
    print("Processor ", key, " -> ", value)
    value.shutdown()

print("Exiting")
