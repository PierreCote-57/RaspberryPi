# Finds the list of serial ports
# and finds specific ports as required.

import sys
import serial
from serial.tools import list_ports


# 2040 boards by serial number
#   'e661410403295833'
#   'e6617c93e3514d2a'
class TugHardware:

    # def defines a method/function

    # Constructor
    def __init__(self):
        self.platform = sys.platform
        self.ttyList = list(serial.tools.list_ports.comports())
        return

    # toString
    def __str__(self):
        return f"TugSerial on "

    def findPort(self, serial, descr):
        for dev in self.ttyList:
            if None != serial and dev.serial_number == serial:
                return dev
            elif None != descr and None != dev.description and descr in dev.description:
                return dev
        return None
    
    def findSerialGPS(self):
        return self.findPort(self, "GPS")
    
    def findMotor2040(self):
        return self.findPort("e661410403295833", None);

    def findServo2040(self):
        return self.findPort("e6617c93e3514d2a", None);


if __name__ == "__main__":
    ttyList = TugHardware()
    print("Found platform: ", ttyList.platform)

    print("Devices found: ", ttyList.ttyList)
    print("SerialGPS is on ", ttyList.findSerialGPS())
    print("Motor2040 is on ", ttyList.findMotor2040())
    print("Servo2040 is on ", ttyList.findServo2040())

    print("Done")
