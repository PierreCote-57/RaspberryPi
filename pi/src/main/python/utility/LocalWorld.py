# Finds the list of serial ports
# and finds specific ports as required.

import sys
import serial
import psutil
from serial.tools import list_ports

# See bluetoothctl/scan on /list /devices
#   May need "sudo rfcomm connect GarminGPS 0C:7E:24:39:EA:8E"

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

class LocalHardware:

    # def defines a method/function

    @staticmethod
    def getPlatform():
        return sys.platform

    @staticmethod
    def showPortList():
        ttyList = list(serial.tools.list_ports.comports())
        for port in ttyList:
            LocalHardware.showPort(port);

    @staticmethod
    def showPort(port):
        print("Name: ", port.name)
        print("\tProduct:", port.product)
        print("\tDescription:", port.description)
        print("\tManufacturer: ", port.manufacturer)
        print("\tSerial number: ", port.serial_number)
        print("\tSubsystem:", port.subsystem)
        

    @staticmethod
    def findPort(text):
        ttyList = list(serial.tools.list_ports.comports())
        for dev in ttyList:
            if None != dev.serial_number and dev.serial_number == text:
                return dev
            elif None != dev.name and text in dev.name:
                return dev
            elif None != dev.device and text in dev.device:
                return dev
            elif None != dev.description and text in dev.description:
                return dev
        return None
    
    @staticmethod
    def findGPS_USB():
        return LocalHardware.findPort("u-blox 7 - GPS/GNSS")
    
    @staticmethod
    def findGPS_Garmin():
        return LocalHardware.findPort("rfcomm")

    @staticmethod
    def findMotor2040():
        return LocalHardware.findPort("e661410403295833");

    @staticmethod
    def findServo2040():
        return LocalHardware.findPort("e6617c93e3514d2a");

    @staticmethod
    def findYukon():
        return LocalHardware.findPort("e4612d169b135022");

class LocalSoftware:
    @staticmethod
    def listProcesses(text):
        pids = psutil.pids()
        for pid in pids:
            p = psutil.Process(pid)
            if len(p.cmdline()) > 0 and text in p.cmdline()[0]:
                LocalSoftware.showProcess(p)

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
    print("Found platform: ", LocalHardware.getPlatform())

    LocalHardware.showPortList()

    print("SerialGPS is on ", LocalHardware.findGPS_USB())
    print("Motor2040 is on ", LocalHardware.findMotor2040())
    print("Servo2040 is on ", LocalHardware.findServo2040())
    print("Yukon     is on ", LocalHardware.findYukon())

#    print("Processes ", TugSoftware.listProcesses("rfcomm"))
    p_rfcomm = LocalSoftware.findProcesses("rfcomm");
    if None != p_rfcomm:
        LocalSoftware.showProcess(p_rfcomm)

    print("Done")
