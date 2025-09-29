import serial
import time
from datetime import datetime
import os
import sys
import colorsys

import TugWorld

homePath = os.path.abspath(".") + "/pi/src/main/python"
sys.path.append(homePath + "/TugBoat")

from utility import TugUtil


class ServoClient:

    # def defines a method/function

    # Constructor
    def __init__(self):
        self.platform = sys.platform
        self.ttyList = list(serial.tools.list_ports.comports())
        world = TugWorld.TugHardware()
        self.address = world.findServo2040()
        print("Servo2040 is on ", self.address)

        self.dev = self.address.device
        print("Opening serial ", self.dev)
        self.remote = serial.Serial(self.dev, 9600, timeout=1)  # Open Serial port

        return

    # toString
    def __str__(self):
        return "ServoClient on {}" % self.dev
    

    def processCommand(self, command):
        bOut = bytes(command + "\n", "utf-8")
        self.remote.write(bOut);
        bIn = ""
        while (len(bIn) < 1):
            bIn = self.remote.readline()
        back = bIn.decode("utf-8")
        return back
        

    def clearLight(self):
        command = "$Light,Clear"
        answer = self.processCommand(command)
        return answer


    def setRGB(self, n, r, g, b):
        command = "$Light,SetRGB,{0},{1},{2},{3}".format(n, r, g, b)
        answer = self.processCommand(command)
        return AnswerRGB(answer)
    
    def setHSV(self, n, h, s, b):
        command = "$Light,SetHSV,{0},{1},{2},{3}".format(n, h, s, v)
        answer = self.processCommand(command)
        return AnswerRGB(answer)
    
    def readVoltage(self):
        return self.readSensor("Volt")

    def readCurrent(self):
        return self.readSensor("Amp")
    
    def readSensor(self, channel):
        command = f"$Sensor,{channel}"
        response = self.processCommand(command)
        responseParts = response.split(",")
        isSuccess = "OK" == responseParts[0]
        if isSuccess:
            answer = float(responseParts[1]);
        else:
            answer = response
        return answer


class AnswerRGB:
    def __init__(self, answer):
        self.answer = answer;
        self.result = answer[:2]
        rgbParts= answer[4:len(answer)-3].split(",")
        self.r = int(rgbParts[0].replace("'", ""))
        self.g = int(rgbParts[1].replace("'", ""))
        self.b = int(rgbParts[2].replace("'", ""))
        self.s = int(rgbParts[3].replace("'", ""))

    def __str__(self):
        return f"[{self.r:3}, {self.g:3}, {self.b:3}, {self.s:3}]"


def testRGB(servo):
    pause = 1.0
    servo.clearLight()
    time.sleep(pause)
    servo.setRGB(1, 64, 0, 0)
    time.sleep(pause)
    servo.setRGB(2, 0, 64, 0)
    time.sleep(pause)
    servo.setRGB(3, 0, 0, 64)
    time.sleep(pause)
    servo.clearLight()

def calibrateRGB(servo):
    values = range(0, 256, 8)
    pauseSec = 0.1
    for x in values:
        answerR = servo.setRGB(1, x, 0, 0)
        time.sleep(pauseSec)
        answerG = servo.setRGB(1, 0, x, 0)
        time.sleep(pauseSec)
        answerB = servo.setRGB(1, 0, 0, x)
        time.sleep(pauseSec)
        print(f"At {x:3}: R={answerR}; G={answerG}; B={answerB}")
    servo.clearLight()


def testSensor(servo):
    voltage = servo.readVoltage()
    current = servo.readCurrent()
    print(datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f'), end=" ")
    print(f"Voltage {voltage:.3f} volts Current {current:.3f} amps", end="")
    
    for i in range(6):
        sensor = servo.readSensor(i)
        print(f" Sensor-{i} = {sensor:.3f}", end = "")
    print("")



if __name__ == "__main__":
    timer = TugUtil.TugTimer()
    timer.checkpoint("Writing ")

    servo = ServoClient()
    testRGB(servo)
    calibrateRGB(servo)
    testSensor(servo)
