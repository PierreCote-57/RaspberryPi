# Finds the list of serial ports
# and finds specific ports as required.

import sys
import serial
import psutil
from serial.tools import list_ports


# USB GPS (Typically /dev/ttyACM0):
#   Description:    'u-blox 7 - GPS/GNSS Receiver'
#   Manufacturer:   'u-blox AG - www.u-blox.com'
#   Product:        'u-blox 7 - GPS/GNSS Receiver'
#
# 2040 boards by serial number
#   Motor2040:          'e661410403295833' (Likely to be on /dev/ttyACM2)
#
#   Servo2040:          'e6617c93e3514d2a' (Typically /dev/ttyACM1)
#       Description:    'Board in FS mode - Board CDC'
#       Manufacturer:   'MicroPython'
#       Product:        'Board in FS mode'
#
#
# Garmin bluetooth available (on /dev/rfcomm0)
#   Requires running command:
#       sudo rfcomm connect GarminGPS 0C:7E:24:39:EA:8E
#   See https://forums.raspberrypi.com/viewtopic.php?t=199308
#
#   ttyAMA10 appeart to be the keyboard (both)
#   ttyUSB0 also keyboard (both)

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

    def findPort(self, text):
        for dev in self.ttyList:
            if None != dev.serial_number and dev.serial_number == text:
                return dev
            elif None != dev.name and text in dev.name:
                return dev
            elif None != dev.device and text in dev.device:
                return dev
            elif None != dev.description and text in dev.description:
                return dev
        return None
    
    def findSerialGPS(self):
        return self.findPort("u-blox 7 - GPS/GNSS")
    
    def findGarminGPS(self):
        return self.findPort("rfcomm")

    def findMotor2040(self):
        return self.findPort("e661410403295833");

    def findServo2040(self):
        return self.findPort("e6617c93e3514d2a");


class TugSoftware:
    @staticmethod
    def listProcesses(text):
        pids = psutil.pids()
        for pid in pids:
            p = psutil.Process(pid)
            if len(p.cmdline()) > 0 and text in p.cmdline()[0]:
                TugSoftware.showProcess(p)

    @staticmethod
    def showProcess(p):
        print("Process ",p.pid)
        print("\tCommandLine", p.cmdline())
        print("\tusername", p.username())
        print("\tcpu_num", p.cpu_num())
        print("\tcpu_times", p.cpu_times)
        print("\tcreate_time", p.create_time())
        print("\tis_running", p.is_running())
        print("\tmemroy_info", p.memory_info())
        print("\tnice", p.nice())
        print("\tstatus", p.status())
        print("\tusername", p.username())

    @staticmethod
    def findProcesses(text):
        pids = psutil.pids()
        for pid in pids:
            p = psutil.Process(pid)
            for part in p.cmdline():
                if text in part:
                    return p


if __name__ == "__main__":
    hw = TugHardware()
    print("Found platform: ", hw.platform)

    print("Devices found: ", hw.ttyList)
    print("SerialGPS is on ", hw.findSerialGPS())
    print("Motor2040 is on ", hw.findMotor2040())
    print("Servo2040 is on ", hw.findServo2040())

#    print("Processes ", TugSoftware.listProcesses("rfcomm"))
    p_rfcomm = TugSoftware.findProcesses("rfcomm");
    if None != p_rfcomm:
        TugSoftware.showProcess(p_rfcomm)

    print("Done")
