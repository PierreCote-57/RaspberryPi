import serial
import time
import json
from datetime import datetime
import os
import sys

import LocalWorld
import RandomUtil
from RandomUtil import SimpleTimer

from PimoroniClientBase import ClientBase
from PimoroniClientBase import GenericAnswer
from PimoroniClientBase import AnswerNumber


class ClientMotor2040(ClientBase):

    # def defines a method/function

    # Constructor
    def __init__(self):
        ClientBase.__init__(self, LocalWorld.LocalHardware().findMotor2040())
        return

    # toString
    def __str__(self):
        return super().__str__()

    def disable(self, channel):
        response = self.processCommand(f"$Motor,Disable,{channel}")
        return GenericAnswer(response)

    def brake(self, channel):
        response = self.processCommand(f"$Motor,Brake,{channel}")
        return GenericAnswer(response)

    def coast(self, channel):
        response = self.processCommand(f"$Motor,Coast,{channel}")
        return GenericAnswer(response)

    def setDuty(self, channel, level):
        response = self.processCommand(f"$Motor,SetDuty,{channel},{level}")
        return GenericAnswer(response)

    def setSpeed(self, channel, level):
        response = self.processCommand(f"$Motor,SetSpeed,{channel},{level}")
        return GenericAnswer(response)

    def stop(self, channel):
        response = self.processCommand(f"$Motor,Stop,{channel}")
        return GenericAnswer(response)

    def getMotorProp(self, channel):
        response = self.processCommand(f"$Motor,Prop,{channel}")
        return GenericAnswer(response)


    def getCount(self, channel):
        response = self.processCommand(f"$Encoder,GetCount,{channel}")
        return AnswerNumber(response)

    def getDegrees(self, channel):
        response = self.processCommand(f"$Encoder,GetDegrees,{channel}")
        return AnswerNumber(response)

    def zero(self, channel):
        response = self.processCommand(f"$Encoder,Zero,{channel}")
        return GenericAnswer(response)

    def state(self, channel):
        response = self.processCommand(f"$Encoder,State,{channel}")
        return AnswerNumber(response)

    def capture(self, channel):
        response = self.processCommand(f"$Encoder,Capture,{channel}")
        return GenericAnswer(response)

    def getEncoderProp(self, channel):
        response = self.processCommand(f"$Encoder,Prop,{channel}")
        return GenericAnswer(response)

def testMotor(client):
    for channel in [0, 3]:
        print(f"Motor {channel}: Props = {client.getMotorProp(channel)}")
#        for speed in [0.1, 0.25, 0.5, 1.0]:
        for speed in [0.25]:
            testMotorSingle(client, channel, speed)

def testMotorSingle(client, channel, speed):
    client.setSpeed(channel, speed)
    answer1 = client.getDegrees(channel)
    time.sleep(1.0)
    answer2 = client.getDegrees(channel)
    client.stop(channel)
    time.sleep(0.1)
    answer3 = client.getDegrees(channel)
    delta1 = answer2.value - answer1.value
    delta2 = answer3.value - answer2.value
    print(f"Testing[channel {channel}, speed {speed:4.1f}]: Degrees turning = {delta1:8,.1f}; degrees to stop: {delta2:5,.1f}")

if __name__ == "__main__":
    timer = RandomUtil.SimpleTimer()
    timer.checkpoint("Writing ")

    client = ClientMotor2040()
    client.testRGB(0, 0.5)

    testMotor(client)


    print("Done")
