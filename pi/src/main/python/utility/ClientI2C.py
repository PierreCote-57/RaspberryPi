from LocalWorld import LocalHardware

from datetime import datetime
import time
import smbus
import LCD2004
import math

class AbstractClientI2C():
    def __init__(self, channelName):
        self.bus = smbus.SMBus(1) # or bus = smbus.SMBus(1) for Revision 2 boards
        self.address = LocalHardware.getI2CChannel(channelName)

    def writeByte(self, addr, b):
        self.bus.write_byte_data(self.address, addr, b)

    def readByte(self, adr):
        return self.bus.read_byte_data(self.address, adr)

    def readWordU(self, adr):
        high = self.bus.read_byte_data(self.address, adr)
        low = self.bus.read_byte_data(self.address, adr+1)
        val = (high << 8) + low
        return val

    def readWordS(self, adr):
        val = self.readWordU(adr)
        if (val >= 0x8000):
            return -((65535 - val) + 1)
        else:
            return val



# Display is LCD1602
# Display is LCD2004
DISPLAY = LCD2004
class ClientDisplay():
    cch = 20
    def __init__(self):
        channel = LocalHardware.getI2CChannel("Display")
        DISPLAY.init(channel, 1)	# init(slave address, background light)

    def writeLeft(self, y, text):
        self.write(0, y, text)

    def writeRight(self, y, text):
        self.write(self.cch - len(text), y, text)
    def writeMiddle(self, y, text):
        self.write(int(self.cch / 2) - int(len(text) / 2), y, text)

    def write(self, x, y, text):
        DISPLAY.write(x, y, text)

    def test(self):
#        str = datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f')
#        str = datetime.fromtimestamp(time.time()).strftime('%H:%M:%S')
        str = datetime.fromtimestamp(time.time()).strftime('%H%M%S')
        self.writeMiddle(0, str)

        charBegin1 = 0x60
        charBegin2 = 0xF0
        i = 2
        self.writeLeft (0, f"1={hex(charBegin1)}");
        self.writeRight(0, f"2={hex(charBegin2)}");
        for charOffset in range(16):
            self.write(i, 1, hex(i - 2)[2])
            self.write(i, 2, chr(charBegin1 + charOffset))
            self.write(i, 3, chr(charBegin2 + charOffset))
            i += 1

# The MPU-6050
class ClientGyroscope(AbstractClientI2C):
    # Power management registers
    power_mgmt_1 = 0x6b
    power_mgmt_2 = 0x6c

    def __init__(self):
        AbstractClientI2C.__init__(self, "Gyro")

        # Now wake the 6050 up as it starts in sleep mode
        self.writeByte(ClientGyroscope.power_mgmt_1, 0)
        pass

    def readGyro(self):
        gyro_xout = self.readWordS(0x43)
        gyro_yout = self.readWordS(0x45)
        gyro_zout = self.readWordS(0x47)
        self.gX = gyro_xout / 131
        self.gY = gyro_yout / 131
        self.gZ = gyro_zout / 131

    def readAccel(self):
        accel_xout = self.readWordS(0x3b)
        accel_yout = self.readWordS(0x3d)
        accel_zout = self.readWordS(0x3f)

        self.aX = accel_xout / 16384.0
        self.aY = accel_yout / 16384.0
        self.aZ = accel_zout / 16384.0

        self.rX =  self.get_x_rotation(self.aX, self.aY, self.aZ)
        self.rY =  self.get_y_rotation(self.aX, self.aY, self.aZ)


    @staticmethod
    def distance(a,b):
        return math.sqrt((a*a)+(b*b))

    @staticmethod
    def get_y_rotation(x,y,z):
        radians = math.atan2(x, ClientGyroscope.distance(y,z))
        return -math.degrees(radians)

    @staticmethod
    def get_x_rotation(x,y,z):
        radians = math.atan2(y, ClientGyroscope.distance(x,z))
        return math.degrees(radians)
    
    def test(self):
        for i in range(3):
            self.readGyro()
            self.readAccel()
            textG = f"gX = {self.gX:4.0f}; gY = {self.gY:4.0f}; gZ = {self.gZ:4.0f};"
            textA = f"aX = {self.aX:4.1f}; aY = {self.aY:4.1f}; aZ = {self.aZ:4.1f};"
            textR = f"rX = {self.rX:4.1f}; rY = {self.rY:4.1f}"
            print(textG, textA, textR)
            time.sleep(1)

# BMP085/BMP180/TBD
class ClientBarometer(AbstractClientI2C):
    # Operating Modes
    BMP085_ULTRALOWPOWER     = 0
    BMP085_STANDARD          = 1
    BMP085_HIGHRES           = 2
    BMP085_ULTRAHIGHRES      = 3

    # BMP085 Registers
    BMP085_CAL_AC1           = 0xAA  # R   Calibration data (16 bits)
    BMP085_CAL_AC2           = 0xAC  # R   Calibration data (16 bits)
    BMP085_CAL_AC3           = 0xAE  # R   Calibration data (16 bits)
    BMP085_CAL_AC4           = 0xB0  # R   Calibration data (16 bits)
    BMP085_CAL_AC5           = 0xB2  # R   Calibration data (16 bits)
    BMP085_CAL_AC6           = 0xB4  # R   Calibration data (16 bits)
    BMP085_CAL_B1            = 0xB6  # R   Calibration data (16 bits)
    BMP085_CAL_B2            = 0xB8  # R   Calibration data (16 bits)
    BMP085_CAL_MB            = 0xBA  # R   Calibration data (16 bits)
    BMP085_CAL_MC            = 0xBC  # R   Calibration data (16 bits)
    BMP085_CAL_MD            = 0xBE  # R   Calibration data (16 bits)
    BMP085_CONTROL           = 0xF4
    BMP085_TEMPDATA          = 0xF6
    BMP085_PRESSUREDATA      = 0xF6

    # Commands
    BMP085_READTEMPCMD       = 0x2E
    BMP085_READPRESSURECMD   = 0x34

    def __init__(self, precisionMode=BMP085_HIGHRES):
        AbstractClientI2C.__init__(self, "Barometer")
        # Normal range: A normal sea-level pressure generally falls between 980 and 1040 mb.
        self.pressure0 = 1013.25
        self.precisionMode = precisionMode
        self.readCalibration()

    def readCalibration(self):
        self.cal_AC1 = self.readWordS(ClientBarometer.BMP085_CAL_AC1)   # INT16
        self.cal_AC2 = self.readWordS(ClientBarometer.BMP085_CAL_AC2)   # INT16
        self.cal_AC3 = self.readWordS(ClientBarometer.BMP085_CAL_AC3)   # INT16
        self.cal_AC4 = self.readWordU(ClientBarometer.BMP085_CAL_AC4)      # UINT16
        self.cal_AC5 = self.readWordU(ClientBarometer.BMP085_CAL_AC5)      # UINT16
        self.cal_AC6 = self.readWordU(ClientBarometer.BMP085_CAL_AC6)      # UINT16

        self.cal_B1 = self.readWordS(ClientBarometer.BMP085_CAL_B1)     # INT16
        self.cal_B2 = self.readWordS(ClientBarometer.BMP085_CAL_B2)     # INT16
        self.cal_MB = self.readWordS(ClientBarometer.BMP085_CAL_MB)     # INT16
        self.cal_MC = self.readWordS(ClientBarometer.BMP085_CAL_MC)     # INT16
        self.cal_MD = self.readWordS(ClientBarometer.BMP085_CAL_MD)     # INT16

    def readTempC(self):
        raw = self.readTempRaw()
        degC = self.convertTempC(raw)
        return degC

    def readTempRaw(self):
        self.writeByte(ClientBarometer.BMP085_CONTROL, ClientBarometer.BMP085_READTEMPCMD)
        time.sleep(0.005)  # Wait 5ms
        raw = self.readWordU(ClientBarometer.BMP085_TEMPDATA)
        return raw

    def convertTempC(self, raw):
        # Datasheet value for debugging:
        #UT = 27898
        # Calculations below are taken straight from section 3.5 of the datasheet.
        X1 = ((raw - self.cal_AC6) * self.cal_AC5) >> 15
        X2 = (self.cal_MC << 11) // (X1 + self.cal_MD)
        B5 = X1 + X2
        temp = ((B5 + 8) >> 4) / 10.0
        return temp

    def readPressurePa(self):
        rawT = self.readTempRaw()
        rawP = self.readPressureRaw()
        pa = self.convertPressurePa(rawT, rawP)
        return pa

    def readPressureRaw(self):
        # Note the increasing delay as the precision increase.
        self.writeByte(ClientBarometer.BMP085_CONTROL, ClientBarometer.BMP085_READPRESSURECMD + (self.precisionMode << 6))
        if self.precisionMode == ClientBarometer.BMP085_ULTRALOWPOWER:
            time.sleep(0.005)
        elif self.precisionMode == ClientBarometer.BMP085_HIGHRES:
            time.sleep(0.014)
        elif self.precisionMode == ClientBarometer.BMP085_ULTRAHIGHRES:
            time.sleep(0.026)
        else:
            time.sleep(0.008)
        msb = self.readByte(ClientBarometer.BMP085_PRESSUREDATA)
        lsb = self.readByte(ClientBarometer.BMP085_PRESSUREDATA+1)
        xlsb = self.readByte(ClientBarometer.BMP085_PRESSUREDATA+2)
        raw = ((msb << 16) + (lsb << 8) + xlsb) >> (8 - self.precisionMode)
        return raw

    def convertPressurePa(self, rawT, rawP):
        # Calculations below are taken straight from section 3.5 of the datasheet.
        # Calculate true temperature coefficient B5.
        X1 = ((rawT - self.cal_AC6) * self.cal_AC5) >> 15
        X2 = (self.cal_MC << 11) // (X1 + self.cal_MD)
        B5 = X1 + X2
        # Pressure Calculations
        B6 = B5 - 4000
        X1 = (self.cal_B2 * (B6 * B6) >> 12) >> 11
        X2 = (self.cal_AC2 * B6) >> 11
        X3 = X1 + X2
        B3 = (((self.cal_AC1 * 4 + X3) << self.precisionMode) + 2) // 4
        X1 = (self.cal_AC3 * B6) >> 13
        X2 = (self.cal_B1 * ((B6 * B6) >> 12)) >> 16
        X3 = ((X1 + X2) + 2) >> 2
        B4 = (self.cal_AC4 * (X3 + 32768)) >> 15
        B7 = (rawP - B3) * (50000 >> self.precisionMode)
        if B7 < 0x80000000:
            p = (B7 * 2) // B4
        else:
            p = (B7 // B4) * 2
        X1 = (p >> 8) * (p >> 8)
        X1 = (X1 * 3038) >> 16
        X2 = (-7357 * p) >> 16
        p = p + ((X1 + X2 + 3791) >> 4)
        return p

    def readPressureMB(self):
        return self.readPressurePa() / 100

    def setPressure0(self):
        self.pressure0 = self.readPressureMB()

    def readAltitudeFt(self):
        # As per https://en.wikipedia.org/wiki/Pressure_altitude
        # Referencing https://www.weather.gov/media/epz/wxcalc/pressureAltitude.pdf
        p = self.readPressureMB()
        ft = (1 - math.pow(p / self.pressure0, 0.190284)) * 145366.45
        return ft
    def readAltitudeM(self):
        ft = self.readAltitudeFt();
        m = ft * 0.3048
        return m

    def test(self):
        print(f"Raw temp    = {self.readTempRaw()}")
        print(f"Temperature = {self.readTempC()} C")
        print(f"Raw pressure = {self.readPressureRaw()}")
        print(f"Pressure  = {self.readPressurePa()} Pa")
        print(f"Pressure  = {self.readPressureMB()} mb")
        print(f"Altitude  = {self.readAltitudeM()} m")


if __name__ == "__main__":
    if 1 == 2:
        client = ClientDisplay()
        client.test()

    if 1 == 1:
        client = ClientBarometer()
        print(f"Mode(Default) = {client.precisionMode}")
        client.test()
        for mode in range(4):
            client.precisionMode = mode
            print(f"Mode = {client.precisionMode}")
            client.test()

    if 1 == 2:
        client = ClientGyroscope()
        client.test()

    print("Done")

