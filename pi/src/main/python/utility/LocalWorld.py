# Finds the list of serial ports
# and finds specific ports as required.

import sys
import os
import platform
import serial
import psutil
import LCD1602
import time

from serial.tools import list_ports

# See bluetoothctl/scan on /list /devices
#   May need "sudo rfcomm connect GarminGPS 0C:7E:24:39:EA:8E"

# To See USB:
# To see TTY:
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
#   ttyAMA10 appeara to be the keyboard (both)
#   ttyUSB0 also keyboard (both)
#
# To see I2C:
#   i2cdetect -y 1

class LocalHardware:

    pinMap = {}
    pinMap[ 1] = "NA"
    pinMap[ 2] = "SDA1, I2C"
    pinMap[ 3] = "SCL1, I2C"
    pinMap[ 4] = "GPIO_GCLK"
    pinMap[ 5] = "Free"
    pinMap[ 6] = "Free"
    pinMap[ 7] = "SPI_CE1_N"
    pinMap[ 8] = "SPI_CE0_N"
    pinMap[ 9] = "SPI_MISO"
    pinMap[10] = "SPI_MOSI"
    pinMap[11] = "SPI_CLK"
    pinMap[12] = "Free"
    pinMap[13] = "Free"
    pinMap[14] = "TXD0"
    pinMap[15] = "RXD0"
    pinMap[16] = "Free"
    pinMap[17] = "Free"
    pinMap[18] = "Free"
    pinMap[19] = "Free"
    pinMap[20] = "Free"
    pinMap[21] = "Humiture Signal"
    pinMap[22] = "Tracker"
    pinMap[23] = "Distance.trigger"
    pinMap[24] = "Distance.echo"
    pinMap[25] = "Free"
    pinMap[26] = "Free"
    pinMap[27] = "Humiture Power"

    i2cMap = {}
    i2cMap[0x27] = "Display"
    i2cMap[0x2d] = "UPS"
    i2cMap[0x48] = "ADC"
    i2cMap[0x68] = "Gyro"

    @staticmethod
    def showPinMap():
        for pinNo, pinName in LocalHardware.pinMap.items():
            print(f"GPIO {pinNo:2d} = {pinName}")

    @staticmethod
    def getGpioPin(name):
        for pinNo, pinName in LocalHardware.pinMap.items():
            if (name == pinName):
                return pinNo
        return None

    @staticmethod
    def showI2CMap():
        for value, name in LocalHardware.i2cMap.items():
            print(f"Channel {value:2d} = {name}")

    @staticmethod
    def getI2CChannel(name):
        for value, pinName in LocalHardware.i2cMap.items():
            if (name == pinName):
                return value
        return None

    @staticmethod
    def showSerialPortList():
        ttyList = list(serial.tools.list_ports.comports())
        for port in ttyList:
            LocalHardware.showSerialPort(port);

    @staticmethod
    def showSerialPort(port):
        print("Name: ", port.name)
        print("\tProduct:", port.product)
        print("\tDescription:", port.description)
        print("\tManufacturer: ", port.manufacturer)
        print("\tSerial number: ", port.serial_number)
        print("\tSubsystem:", port.subsystem)
        

    @staticmethod
    def findSerialPort(text):
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
        return LocalHardware.findSerialPort("u-blox 7 - GPS/GNSS")
    
    @staticmethod
    def findGPS_Garmin():
        return LocalHardware.findSerialPort("rfcomm")

    @staticmethod
    def findMotor2040():
        return LocalHardware.findSerialPort("e661410403295833");

    @staticmethod
    def findServo2040():
        return LocalHardware.findSerialPort("e6617c93e3514d2a");

    @staticmethod
    def findYukon():
        return LocalHardware.findSerialPort("e4612d169b135022");

class LocalSoftware:
    @staticmethod
    def getPlatform():
        return sys.platform

    @staticmethod
    def clearScreen():
        system_name = platform.system()
        if system_name == "Windows":
            os.system('cls')
        else:  # Linux, macOS, and other Unix-like systems
            os.system('clear')

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
            try:
                p = psutil.Process(pid)
                for part in p.cmdline():
                    if text in part:
                        return p
            except:
                continue


if __name__ == "__main__":
    LocalSoftware.clearScreen()
    print("Found platform: ", LocalSoftware.getPlatform())
    print("Working directory", os.getcwd())
    LocalHardware.showPinMap()
    LocalHardware.showI2CMap()

    LocalHardware.showSerialPortList()

    print("SerialGPS  is on ", LocalHardware.findGPS_USB())
    print("GarmingGPS is on ", LocalHardware.findGPS_Garmin())
    print("Motor2040  is on ", LocalHardware.findMotor2040())
    print("Servo2040  is on ", LocalHardware.findServo2040())
    print("Yukon      is on ", LocalHardware.findYukon())

#    print("Processes ", TugSoftware.listProcesses("rfcomm"))
    p_rfcomm = LocalSoftware.findProcesses("rfcomm");
    if None != p_rfcomm:
        LocalSoftware.showProcess(p_rfcomm)

    if 1 == 2:
        LCD1602.init(0x27, 1)	# init(slave address, background light)
        LCD1602.write(0, 0, 'Hello pi!')
        time.sleep(2.0)
        LCD1602.write(0, 1, '1234567890123456')


    print("Done")
