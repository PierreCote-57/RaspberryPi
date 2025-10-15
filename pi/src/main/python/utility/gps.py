#!/usr/bin/env python3
# Original Code: https://gist.github.com/Lauszus/5785023#file-gps-py
# Created by: Kristian Sloth Lauszus

from datetime import datetime
import pytz
import time
import serial
import logging
import threading

import LocalWorld as LocalWorld

ZONE_UTC = pytz.timezone("UTC")
ZONE_LOCAL = pytz.timezone("America/Vancouver")

EARTH_RADIUS_KM = 6371

class ReadingRMC:

    # Precision: 1e-5 = 0.00001 ~ 1.1 meter
    # Constructor
    def __init__(self, dateTime, status, lat, lon, speedMPS, courseTrue):
        self.dateTimeUTC = dateTime
        self.dateTime = dateTime.astimezone(ZONE_LOCAL)
        self.status = status
        self.lat = lat
        self.lon = lon
        self.speedMPS = speedMPS
        self.courseTrue = courseTrue

    def isGood(self):
        return "A" == self.status
    
    def statusText(self):
        return u'\N{check mark}' if self.isGood() else u'\N{cross mark}'
    
    def timeText(self):
        return self.dateTime.strftime("%Y-%m-%d %H:%M:%S %Z")

    def latText(self):
        return f"{self.lat:+9.5f}" if self.isGood() else "None"

    def lonText(self):
        return f"{self.lon:+9.5f}" if self.isGood() else "None"

    def speedText(self):
        return f"{self.speedMPS:4.1f}" if self.isGood() else "None"

    def courseText(self):
        return f"{self.courseTrue:3.0f}\xB0" if None != self.courseTrue else "None"

    # toString
    def __str__(self):
        return f"{self.timeText()} {self.statusText()} ({self.latText()}, {self.lonText()}), @{self.speedText()} mps to {self.courseText()} True"

class ReadingGGA:
    # Constructor
    def __init__(self, timeOfDay, lat, lon, quality, countInUse, altitude, units):
        self.timeOfDay = timeOfDay
        self.lat = lat
        self.lon = lon
        self.quality = quality
        self.countInUse = countInUse
        self.altitude = altitude
        self.units = units

    def isGood(self):
        return "1" == self.quality

class ReadingGSA:
    def __init__(self, mode, quality, satelliteList):
        self.mode = mode
        self.quality = quality
        self.satelliteList = satelliteList
    
    def getCount(self):
        count = 0
        for n in self.satelliteList:
            if n:
                count = count + 1
        return count

class ReadingGSV:
        def __init__(self, messageCount, messageNo, satInView):
            self.satInView = satInView



# Sentences of interest for GPS:
# RMC Recommended minimum specific GPS/Transit data
# GGA Global Positioning System Fix Data
# GLL Geographic position, latitude / longitude
# GSA GPS DOP and active satellites
# GSV GPS Satellites in view
class SerialGPS:

    KM_PER_NM = 1.852

    # Constructor
    def __init__(self, port):
        self.port = port
        device = port.device
        self.ser = serial.Serial(device, 9600, timeout=1)  # Open Serial port

        self.lastRMCGood = None
        self.lastRMC = None
        self.lastGGA = None
        self.lastGSA = None
        self.lastGSV = None

        self.thread = None
        self.callback = None

    # toString
    def __str__(self):
        message = f"SerialGPS on  {self.port}"
        if None != self.lastRMC and self.lastRMC.isGood():
            message = str(self.lastRMC)
        if None != self.lastGGA and self.lastGGA.isGood():
            message = f"{message} alt {self.lastGGA.altitude} {self.lastGGA.units}"
            message = f"{message} using {self.lastGGA.countInUse}"
#            if None != self.lastGSA:
#                message = f"{message}(={self.lastGSA.getCount()})"
            if None != self.lastGSV:
                message = f"{message} of {self.lastGSV.satInView} sat."
        return message

    def start(self):
        # Start on a background thread
        self.thread = threading.Thread(target=SerialGPS.doReading, args=(self,), daemon=True)
        self.thread.name = "SerialGPS"
        self.thread.start()
        pass

    def stop(self):
        # Stop the thread
        if None != self.thread:
            print("Stopping thread ", self.thread.name)
            self.thread = None
            time.sleep(0.1) # Give thread a chance to stop
        pass

    def setCallback(self, callback):
        self.callback = callback

    def doReading(self):
        print("doReading() on thread ", threading.current_thread().name)
        self.waitForReading()
        while True:
            if None == self.thread:
                print("doReading()", threading.current_thread().name, "exiting")
                return
            line = self.readString()
            self.parseLine(line)

    def waitForReading(gps):
        timeStart = datetime.now()
        while True:
            line = gps.readString()
            gps.parseLine(line)
            if None != gps.lastRMC and gps.lastRMC.isGood():
                break
            elif line.startswith("GPRMC"):
                print("Still waiting at", datetime.now(), "after", datetime.now() - timeStart)
        return datetime.now() - timeStart


    def readString(self):
        if 1 == 2:
            while 1:
                while self.ser.read().decode("utf-8") != "$":  # Wait for the begging of the string
                    pass  # Do nothing

        # Wait for a $ that indicates beginning of sentence
        ch = "na";
        while (ch != "$"):
            b = self.ser.read()
            try:
                ch = b.decode("utf-8")
            except:
                ch = "na";
            pass
        line = self.ser.readline().decode("utf-8")  # Read the entire string
        line = line.replace("\r", "")
        line = line.replace("\n", "")
        return line


    def parseLine(self, line):
        lineParts = line.split(",")
        if checksum(line):
#            print(datetime.now(), "Line = ", line)  #.strftime("%Y-%m-%d %H:%M:%S"))
            if lineParts[0] == "GPRMC":
                self.parseRMC(lineParts)
                if self.lastRMC.isGood() and None != self.callback:
                    self.callback(self)
                pass
            elif lineParts[0] == "GPGGA":
                self.parseGGA(lineParts)
                pass
            elif lineParts[0] == "GPGSA":
                self.parseGSA(lineParts)
                pass
            elif lineParts[0] == "GPGSV":
                self.parseGSV(lineParts)
                pass
            elif lineParts[0] == "GPGLL":
                printGLL(lineParts)
                pass
            elif lineParts[0] == "GPVTG":
                printVTG(lineParts)
                pass
            elif lineParts[0] == "GPTXT":
                pass
            else:
                print("Unknown type:", line)
        else:
            print("Invalid checksum")

    @staticmethod
    def parseDateTime(dateText, timeText):
        # Cleanup the time, as needed
        index = timeText.index('.') if timeText else -1
        if (0 <= index):
            timeText = timeText[0:6]
        date = time.strptime(dateText, "%d%m%y")
        timeOfDay = time.strptime(timeText, "%H%M%S")
        fullTime = datetime.strptime(dateText + timeText, "%d%m%y%H%M%S")
        return fullTime

    @staticmethod
    def parseLat(lineParts, index):
        return SerialGPS.parseLatOrLon(lineParts, index, 2)
        
    @staticmethod
    def parseLon(lineParts, index):
        return SerialGPS.parseLatOrLon(lineParts, index, 3)
        
    @staticmethod
    def parseLatOrLon(lineParts, index, count):
        deg = int(lineParts[index][0:count])
        min = float(lineParts[index][count:])
        lol = deg + (min / 60)
        if ("S" == lineParts[index + 1] or "W" == lineParts[index + 1]):
            lol = -lol
        return lol


    def parseRMC(self, lineParts):
        dateTime = SerialGPS.parseDateTime(lineParts[9], lineParts[1])
        dateTime = ZONE_UTC.localize(dateTime)
        status = lineParts[2]
        if ("A" == status):
            lat = SerialGPS.parseLat(lineParts, 3)
            lon = SerialGPS.parseLon(lineParts, 5)
            speedKnot = float(lineParts[7])
            speedKMH = speedKnot * SerialGPS.KM_PER_NM
            speedMPS = speedKMH / 3.600
            courseTrue = float(lineParts[8]) if lineParts[8] else None
        else:
            lat = lon = speedMPS = courseTrue = None
        reading = ReadingRMC(dateTime, status, lat, lon, speedMPS, courseTrue)
        self.lastRMC = reading
        if (reading.isGood()):
            self.lastRMCGood = reading

    def parseGGA(self, lineParts):
#        dateTime = getTime(lineParts[1], "%H%M%S.%f", "%H:%M:%S")
        timeOfDay = time.strptime(lineParts[1][:6], "%H%M%S")
        lat = SerialGPS.parseLat(lineParts, 2)
        lon = SerialGPS.parseLon(lineParts, 4)
        quality = lineParts[6]
        satCount = int(lineParts[7]) if lineParts[7] else None
        altitude = float(lineParts[9]) if lineParts[9] else None
        units = lineParts[10]
        self.lastGGA = ReadingGGA(time, lat, lon, quality, satCount, altitude, units)

    def parseGSA(self, lineParts):
        mode = lineParts[1]
        if (lineParts[2] == "1"):
            quality = "No fix"
        elif (lineParts[2] == "2"):
            quality = "2D fix"
        elif (lineParts[2] == "3"):
            quality = "3D fix"
        else:
            quality = lineParts[2]
        satelliteList = lineParts[3:15]
        self.lastGSA = ReadingGSA(mode, quality, satelliteList)

    def parseGSV(self, lineParts):
        messageCount = int(lineParts[1])
        messageNo = int(lineParts[2])
        satInView = int(lineParts[3])

        for offset in [4, 8, 12, 16]:
            if offset >= len(lineParts):
                break
            prn = lineParts[offset]
            elevation = int(lineParts[offset + 1])
            azimuth = int(lineParts[offset + 2])
            snrText = lineParts[offset + 3]
            if "*" in snrText:
                snrText = snrText[:snrText.index("*")]
            snr = int(snrText) if snrText else None

        self.lastGSV = ReadingGSV(messageCount, messageNo, satInView)

def getTime(string, format, returnFormat):
    try:
        return time.strftime(returnFormat, time.strptime(string, format))  # Convert date and time to a nice printable format
    except:
        return "unknown: " + string


def getLatLng(latString, lngString):
    try:
        latDeg = int(latString[:2])
        latMin = float(latString[2:])   # todo leading 0
        latitude = latDeg + (latMin / 60.0)
        lonDeg = int(lngString[:3])
        lonMin = float(lngString[3:])
        longitude = lonDeg + (lonMin / 60.0)
        lat = latString[:2].lstrip("0") + "." + "%.7s" % str(float(latString[2:]) * 1.0 / 60.0).lstrip("0.")
        lng = lngString[:3].lstrip("0") + "." + "%.7s" % str(float(lngString[3:]) * 1.0 / 60.0).lstrip("0.")
        return lat, lng
    except:
        return "NA", "NA"

# Recommended minimum specific GPS == Minimum complete set of GPS data
def printRMC(lines):
    #print("========================================RMC========================================")
    # print(lines, '\n')
    status = "OK" if "A" == lines[2] else "KO"
    timeUTC = getTime(lines[1] + lines[9], "", "%a %b %d %H:%M:%S %Y")
    latlng = getLatLng(lines[3], lines[5])
    try:
        speedKNT = float(lines[7])
    except:
        speedKNT = 0.0
    speedKMH = speedKNT * 1.85200428
    speedMPS = speedKMH / 3.6

    print(
        datetime.now(), lines[0],
#        " at ", timeUTC, "UTC",
        " status = ", status,
        " Lat,Long: ", latlng[0], lines[4], ", ", latlng[1], lines[6],
#        " speed (knots) = ", speedKNT,
        " speed (km/h)", "{:.2f}".format(speedKMH),
        " speed (m/s)", "{:.2f}".format(speedMPS),
        " track (deg) = ", lines[8],
#        " magvar = ", lines[10], " ", lines[11],
    )

    if (1 == 2):
        print(
            "Fix taken at:",
            getTime(lines[1] + lines[9], "%H%M%S.%f%d%m%y", "%a %b %d %H:%M:%S %Y"),
            "UTC",
        )
        print("Status (A=OK,V=KO):", lines[2])
        print("Lat,Long: ", latlng[0], lines[4], ", ", latlng[1], lines[6], sep="")
        print("Speed (knots):", lines[7])
        print("Track angle (deg):", lines[8])
        print("Magnetic variation: ", lines[10], end="")
        if len(lines) == 13:  # The returned string will be either 12 or 13 - it will return 13 if NMEA standard used is above 2.3
            print(lines[11])
            print(
                "Mode (A=Autonomous, D=Differential, E=Estimated, N=Data not valid):",
                lines[12].partition("*")[0],
            )
        else:
            print(lines[11].partition("*")[0])

    return

# Fix data (Subset of RMC)
def printGGA(lines):
#    print("========================================GGA========================================")
    # print(lines, '\n')
    timeUCT = getTime(lines[1], "%H%M%S.%f", "%H:%M:%S")
    latlng = getLatLng(lines[2], lines[4])
    quality = "Fix" if lines[6] == "1" else "No fix"
    satCount = lines[7]
    altitude = lines[9] + " " + lines[10]

    if 1 == 1:
        print(
            datetime.now(), lines[0],
    #          " at ", timeUCT, "UTC",
            " quality = ", quality,
            " Satellites: ", satCount,
            " Lat,Long: ", latlng[0], lines[3], ", ", latlng[1], lines[5],
            " Altitude: ", altitude
        )

    if (1 == 2):
        print("Fix taken at:", getTime(lines[1], "%H%M%S.%f", "%H:%M:%S"), "UTC")
        print("Lat,Long: ", latlng[0], lines[3], ", ", latlng[1], lines[5], sep="")
        print("Fix quality (0 = invalid, 1 = fix, 2..8):", lines[6])
        print("Satellites:", lines[7].lstrip("0"))
        print("Horizontal dilution:", lines[8])
        print("Altitude: ", lines[9], lines[10], sep="")
        print("Height of geoid: ", lines[11], lines[12], sep="")
        print("Time in seconds since last DGPS update:", lines[13])
        print("DGPS station ID number:", lines[14].partition("*")[0])
    return


# GPS DOP and active satellites
def printGSA(lines):
    # print("========================================GSA========================================")
    # print(lines, '\n')
    if (lines[2] == "1"):
        quality = "No fix"
    elif (lines[2] == "2"):
        quality = "2D fix"
    elif (lines[2] == "3"):
        quality = "3D fix"
    else:
        quality = lines[2]
#    print(datetime.now(), lines[0],
#           " GSA Fix quality = ", quality,
#           " using ", lines[3], " satellites"
#   )
    if 1 == 2:
        print("Selection of 2D or 3D fix (A=Auto,M=Manual):", lines[1])
        print("3D fix (1=No fix,2=2D fix, 3=3D fix):", lines[2])
        print("PRNs of satellites used for fix:", end="")
        for i in range(0, 12):
            prn = lines[3 + i].lstrip("0")
            if prn:
                print(" ", prn, end="")
        print("\nPDOP", lines[15])
        print("HDOP", lines[16])
        print("VDOP", lines[17].partition("*")[0])
    return


# GPS Satellites in view
def printGSV(lines):
    if (1 == 2):
        if lines[2] == "1":  # First sentence
            print("========================================GSV========================================")
        else:
            print("===================================================================================")

    # print("Number of sentences:", lines[1])
    # print("Sentence:", lines[2])
#    print(datetime.now(), lines[0], " Satellites in view:", lines[3])
    if 1 == 2:
        for i in range(0, int(len(lines) / 4) - 1):
            print("Satellite # ", i + 1)
            print("\tSatellite PRN:", lines[4 + i * 4])
            print("\tElevation (deg):", lines[5 + i * 4])
            print("\tAzimuth (deg):", lines[6 + i * 4])
            print("\tSNR (higher is better):", lines[7 + i * 4].partition("*")[0])
    return


# Geographic position Lat/Long (Subset of RMC)
def printGLL(lines):
    # print("========================================GLL========================================")
    # print(lines, '\n')

    latlng = getLatLng(lines[1], lines[3])

    if 1 == 2:
        print(
            datetime.now(), lines[0],
    #        " at ", getTime(lines[5], "%H%M%S.%f", "%H:%M:%S"), "UTC",
            " Lat,Long: ", latlng[0], lines[2], ", ", latlng[1], lines[4]
        )

    if 1 == 2:
        print("Fix taken at:", getTime(lines[5], "%H%M%S.%f", "%H:%M:%S"), "UTC")
        print("Status (A=OK,V=KO):", lines[6])
        if lines[7].partition("*")[0]:  # Extra field since NMEA standard 2.3
            print(
                "Mode (A=Autonomous, D=Differential, E=Estimated, N=Data not valid):",
                lines[7].partition("*")[0],
            )
    return


def printVTG(lines):
    # print("========================================VTG========================================")
    # print(lines, '\n')

    if  1 == 2:
        print(
            datetime.now(), lines[0],
            " Speed (km/h):", lines[7],
            "True track (deg):", lines[1],
        )

    if (1 == 2):
        print("True Track made good (deg):", lines[1], lines[2])
        print("Magnetic track made good (deg):", lines[3], lines[4])
        print("Ground speed (knots):", lines[5], lines[6])
        print("Ground speed (km/h):", lines[7], lines[8].partition("*")[0])
        if lines[9].partition("*")[0]:  # Extra field since NMEA standard 2.3
            print(
                "Mode (A=Autonomous, D=Differential, E=Estimated, N=Data not valid):",
                lines[9].partition("*")[0],
            )
    return


def checksum(line):
    checkString = line.partition("*")
    checksum = 0
    for c in checkString[0]:
        checksum ^= ord(c)

    try:  # Just to make sure
        inputChecksum = int(checkString[2].rstrip(), 16)
    except:
        print("Error in string")
        return False

    if checksum == inputChecksum:
        return True
    else:
        print("=====================================================================================")
        print("===================================Checksum error!===================================")
        print("=====================================================================================")
        print(hex(checksum), "!=", hex(inputChecksum))
        return False

def measureStartup(getPortFunction):
    functionName = getPortFunction.__name__
    device = functionName[8:]
    print(f"Please start GPS on {device}",)
    print("Waiting for GPS to come online")
    while True:
        port = getPortFunction()
        if None != port:
            break
    print(f"Found GPS on {port}")
    print("Waiting for first reading")
    gps = SerialGPS(port)
    duration = gps.waitForReading()
    print(gps.lastRMC)
    print("Time to first reading = ", duration)

def onReading(gps):
    print(gps)

if __name__ == "__main__":
#    format = "%(asctime)s: %(message)s"
#    logging.basicConfig(format=format, level=logging.INFO, datefmt="%H:%M:%S")
#    measureStartup(LocalWorld.LocalHardware.findGPS_USB)
#    measureStartup(LocalWorld.LocalHardware.findGPS_Garmin)
    gps = SerialGPS(LocalWorld.LocalHardware.findGPS_USB())
    gps.setCallback(onReading)
 #   logging.info("Starting thread")
    gps.start()
    time.sleep(5)
#    logging.info("stopping thread")
    gps.stop()
    print("Done")
