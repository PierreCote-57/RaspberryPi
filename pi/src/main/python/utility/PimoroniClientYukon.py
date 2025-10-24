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


class ClientYukon(ClientBase):

    # def defines a method/function

    # Constructor
    def __init__(self):
        ClientBase.__init__(self, LocalWorld.LocalHardware().findYukon())
        self.config = self.getBoardConfig().value

        self.motorPerBoard = 2
        self.outputPerBoard = 2
        self.powerPerBoard = 1
        self.servoPerBoard = 4
        return

    # toString
    def __str__(self):
        return super().__str__()
    
    def findSlot(self, type, index):
        count = 0;
        for i in range(len(self.config)):
            moduleType = self.config[i]
            if None != moduleType and type in moduleType:
                if count == index:
                    return i
                count += 1
        return 0;

# Inherits all the RGB methods

    def clearLED(self):
        response = self.processCommand("$Board,0,Clear")
        return GenericAnswer(response)
    def getBoardConfig(self):
        response = self.processCommand(f"$Board,0,Config")
        return AnswerJson(response)
    def getBoardProp(self):
        response = self.processCommand(f"$Board,0,Prop")
        return AnswerJson(response)
    def setLED(self, no, value):
        response = self.processCommand(f"$Board,0,SetLED,{no},{value}")
        return GenericAnswer(response)

    def setServo(self, channel, angle):
        slot = self.findSlot("Servo", int(channel / self.servoPerBoard))
        response = self.processCommand(f"$Servo,{slot},Set,{channel},{angle}")
        return AnswerNumber(response)
    def getServo(self, channel):
        slot = self.findSlot("Servo", int(channel / self.servoPerBoard))
        response = self.processCommand(f"$Servo,{slot},Get,{channel}")
        return AnswerNumber(response)
    def getServoProp(self, channel):
        slot = self.findSlot("Servo", int(channel / self.servoPerBoard))
        response = self.processCommand(f"$Servo,{slot},Prop,{channel}")
        return AnswerJson(response)
    def closeServo(self, channel):
        slot = self.findSlot("Servo", int(channel / self.servoPerBoard))
        return self.processCommand(f"$Servo,{slot},Close,{channel}")

    def getMotorProp(self, channel):
        slot = self.findSlot("Motor", int(channel / self.servoPerBoard))
        response = self.processCommand(f"$Motor,{slot},Prop,{channel}")
        return AnswerJson(response)
    def setMotor(self, channel, speed):
        slot = self.findSlot("Motor", int(channel / self.motorPerBoard))
        response = self.processCommand(f"$Motor,{slot},Set,{channel},{speed}")
        return AnswerNumber(response)
    def disableMotor(self, channel):
        slot = self.findSlot("Motor", int(channel / self.motorPerBoard))
        response = self.processCommand(f"$Motor,{slot},Disable,{channel}")
        return GenericAnswer(response)

    def setPower(self, channel, value):
        slot = self.findSlot("Power", int(channel / self.motorPerBoard))
        response = self.processCommand(f"$Power,{slot},Set,{value}")
        return GenericAnswer(response)


    def testBoard(self):
        prop = self.getBoardProp()
        if prop.isSuccess():
            print("Props for Board")
            for item in prop.value.items():
                print("\t", item[0], " = ", item[1])
        
        config = self.getBoardConfig()
        if config.isSuccess():
            print("Config for Board")
            for item in config.value:
                print("\t", item)

        delay = 0.5
        print("LED to 1,0")
        self.setLED(0,1)
        self.setLED(1,0)
        time.sleep(delay)
        print("LED to 1,1")
        self.setLED(1,1)
        time.sleep(delay)
        print("Clear")
        self.clearLED()

    def testServo(self):
        angleList =  [0, -45, -90, -45, 0, 45, 90, 45, 0]
    #    angleList =  [0, 45, 0]
        channelList = [0]

        if 1 == 2:
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
                time.sleep(0.25)

    def testMotor(self):
        speed = -0.5
        delay = 1.0
        for channel in [0]:
            prop = self.getMotorProp(channel)
            showProp(f"Motor {channel}", prop)

            print("SetMotor", channel, self.setMotor(channel, speed))
            time.sleep(delay)
            self.setMotor(channel, 0)
            time.sleep(0.5)
    #        print("SetMotor", channel, self.setMotor(channel, -speed))
    #        time.sleep(delay)
            print(self.disableMotor(channel))

    def testPower(self):
        self.setPower(0, 3.3)
        time.sleep(5.0)
        self.setPower(0, 5.0)

def showProp(name, prop):
        print(f"Props for {name} -> isSuccess = {prop.isSuccess()}")
        if prop.isSuccess():
            for item in prop.value.items():
                print("\t", item[0], " = ", item[1])

if __name__ == "__main__":
    timer = RandomUtil.SimpleTimer()
    timer.checkpoint("Writing ")

    client = ClientYukon()

    client.testBoard()
    client.testServo()
#    client.testMotor()
    client.testPower()

    print("Done")
