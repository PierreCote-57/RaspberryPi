#!/usr/bin/env python3
# Original Code: https://gist.github.com/Lauszus/5785023#file-gps-py
# Created by: Kristian Sloth Lauszus

from datetime import datetime
import time
import serial

import TugWorld

class SerialGPS:

    # def defines a method/function

    # Constructor
    def __init__(self):
        world = TugWorld.TugHardware()
        self.address = world.findSerialGPS()
        print("SerialGPS is on ", self.address)
        self.ser = serial.Serial(self.address.device, 9600, timeout=1)  # Open Serial port

    # toString
    def __str__(self):
        return f"SerialGPS on  {self.address}"


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
        lines = line.split(",")
        if checksum(line):
    #        print(datetime.now(), "Line = ", line)  #.strftime("%Y-%m-%d %H:%M:%S"))
            if lines[0] == "GPRMC":
                printRMC(lines)
                pass
            elif lines[0] == "GPGGA":
                printGGA(lines)
                pass
            elif lines[0] == "GPGSA":
                printGSA(lines)
                pass
            elif lines[0] == "GPGSV":
                printGSV(lines)
                pass
            elif lines[0] == "GPGLL":
                printGLL(lines)
                pass
            elif lines[0] == "GPVTG":
                printVTG(lines)
                pass
            else:
                print("Unknown type:", line)
        else:
            print("Invalid checksum")


class ReadingGPRMC:

    # def defines a method/function

    # Constructor
    def __init__(self, status, lat, lon, speedMPS, track):
        self.status = status
        self.lat = lat
        self.lon = lon
        self.speedMPS = speedMPS
        self.track = track

    # toString
    def __str__(self):
        return f"GPSReading  {self.status}"






def getTime(string, format, returnFormat):
    try:
        return time.strftime(returnFormat, time.strptime(string, format))  # Convert date and time to a nice printable format
    except:
        return "unknown: " + string


def getLatLng(latString, lngString):
    try:
        lat = latString[:2].lstrip("0") + "." + "%.7s" % str(float(latString[2:]) * 1.0 / 60.0).lstrip("0.")
        lng = lngString[:3].lstrip("0") + "." + "%.7s" % str(float(lngString[3:]) * 1.0 / 60.0).lstrip("0.")
        return lat, lng
    except:
        return "NA", "NA"


def printRMC(lines):
    #print("========================================RMC========================================")
    # print(lines, '\n')
    status = "OK" if "A" == lines[2] else "KO"
    timeUTC = getTime(lines[1] + lines[9], "%H%M%S.%f%d%m%y", "%a %b %d %H:%M:%S %Y")
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
        " Lat,Long: ", latlng[0], lines[2], ", ", latlng[1], lines[4],
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


def printGGA(lines):
#    print("========================================GGA========================================")
    # print(lines, '\n')
    timeUCT = getTime(lines[1], "%H%M%S.%f", "%H:%M:%S")
    latlng = getLatLng(lines[2], lines[4])
    quality = "Fix" if lines[6] == "1" else "No fix"
    satCount = lines[7]
    altitude = lines[9] + " " + lines[10]

    if 1 == 2:
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


if __name__ == "__main__":
    gps = SerialGPS()
    try:
        while True:
            line = gps.readString()
            gps.parseLine(line)

    except KeyboardInterrupt:
        print("Exiting Script")
