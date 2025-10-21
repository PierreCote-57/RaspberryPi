import serial
import time
from datetime import datetime
import os
import sys

import LocalWorld
import RandomUtil
from RandomUtil import SimpleTimer

from PimoroniClientBase import ClientBase
from PimoroniClientBase import GenericAnswer
from PimoroniClientBase import AnswerJson
from PimoroniClientBase import AnswerNumber


class ClientServo2040(ClientBase):

    # def defines a method/function

    # Constructor
    def __init__(self):
        ClientBase.__init__(self, LocalWorld.LocalHardware().findServo2040())
        return

    # toString
    def __str__(self):
        return super().__str__()

# Inherits all the RGB methods

    def readVoltage(self):
        return self.readSensor("Volt")

    def readCurrent(self):
        return  self.readSensor("Amp")
    
    def readSensor(self, channel):
        response = self.processCommand(f"$Sensor,{channel}")
        return AnswerNumber(response)

    def getSensorProp(self):
        response = self.processCommand(f"$Sensor,Prop")
        return AnswerJson(response)


    def setServo(self, channel, angle):
        response = self.processCommand(f"$Servo,Set,{channel},{angle}")
        return AnswerNumber(response)

    def getServo(self, channel):
        response = self.processCommand(f"$Servo,Get,{channel}")
        return AnswerNumber(response)

    def getServoProp(self, channel):
        response = self.processCommand(f"$Servo,Prop,{channel}")
        return AnswerJson(response)

    def closeServo(self, channel):
        return self.processCommand(f"$Servo,Close,{channel}")


    def testRGB(self):
        for channel in range(6):
            super().testRGB(channel, 0.1)

    def testSensor(self):
        prop = self.getSensorProp()
        print("SensorProp")
        if prop.isSuccess():
            for item in prop.value.items():
                print("\t", item[0], " = ", item[1])
        voltage = self.readVoltage()
        current = self.readCurrent()
        print(datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f'), end=" ")
        print(f"Voltage {voltage.value:.3f} volts Current {current.value:.3f} amps", end="")
        
        for i in range(6):
            sensor = self.readSensor(i)
            print(f" Sensor-{i} = {sensor.value:.3f}", end = "")
        print("")


    def testServo(self):
        angleList =  [0, -45, -90, -45, 0, 45, 90, 45, 0]
        angleList =  [0, 45, 0]
        channelList = [0]

        for channel in channelList:
            prop = self.getServoProp(channel)
            if prop.isSuccess():
                print("Props for Servo ", channel)
                for item in prop.value.items():
                    print("\t", item[0], " = ", item[1])

        delay180 = 0.25
        for angle in angleList:
            print("Moving to ", angle)
            for channel in channelList:
                front = self.setServo(channel, angle)
                back = self.getServo(channel);
                if (angle != back.value or angle != front.value):
                    print("Error")
                time.sleep(0.25)

        delay360 = 1.0
        for channel in [12, 17]:
            self.setServo(channel, 10)
            time.sleep(delay360)
            self.setServo(channel, -10)
            time.sleep(delay360)
    #        servo.setServo(channel, 0)
            self.closeServo(channel)

def calibrateServo360(client):
    noList = [12, 17]
    for no in noList:
        client.setServo(no, 0)
    time.sleep(5)

    for angle in [ 5, 10, 15 ]:
        print("Spinning at ", angle)
        for no in noList:
            client.setServo(no, angle)
        time.sleep(5.0)
        for no in noList:
            client.closeServo(no)
        time.sleep(2)

def testPerformance(client):
    timer = SimpleTimer()
    for n in range(5):
        client.setRGB(n, 128, 128, 0)
    for n in range(5):
        client.setRGB(n, 0, 0, 0)
    timer.checkpoint("Done with 10 setLight")
    for n in [0, 5]:
        client.setServo(n, 45)
    for n in [0, 17]:
        client.setServo(n, 0)
    timer.checkpoint("Done with 4 setServo calls")
    for n in range(10):
        client.readVoltage()
    timer.checkpoint("Done reading 10 voltage")
    print(timer)

if __name__ == "__main__":
    timer = RandomUtil.SimpleTimer()
    timer.checkpoint("Writing ")

    client = ClientServo2040()
    client.testRGB()
#    client.calibrateRGB(servo)

    client.testSensor()

    client.testServo()
#    calibrateServo360(client)
#    testPerformance(client)

    print("Done")
