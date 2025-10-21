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
from PimoroniClientBase import AnswerJson


class ClientMotor2040(ClientBase):

    # Setting -> RPS
    SPEED_CALIBRATION = []
    SPEED_CALIBRATION.append([
        [0.05, 0.17],
        [0.07, 0.28],
        [0.10, 0.44],
        [0.15, 0.71],
        [0.25, 1.24],
        [0.50, 2.61],
        [0.75, 4.1],
        [1.00, 5.48]
    ])
    SPEED_CALIBRATION.append([])
    SPEED_CALIBRATION.append([
        [0.05, 0.03],
        [0.07, 0.04],
        [0.10, 0.08],
        [0.15, 0.14],
        [0.25, 0.27],
        [0.50, 0.61],
        [0.75, 0.95],
        [1.00, 1.30]
    ])
    SPEED_CALIBRATION.append([
        [0.05, 0.16],
        [0.07, 0.28],
        [0.10, 0.43],
        [0.15, 0.70],
        [0.25, 1.26],
        [0.50, 2.66],
        [0.75, 4.08],
        [1.00, 5.48]
    ])

    @staticmethod
    def speedForRPS(channel, rps):
        if channel >= len(ClientMotor2040.SPEED_CALIBRATION):
            return None
        cal = ClientMotor2040.SPEED_CALIBRATION[channel]
        if rps < cal[0][1]:
            return None
        if rps > cal[len(cal) - 1][1]:
            return 1.0
        speed = 1.0
        for i in range(len(cal) - 1):
            point1 = cal[i]
            point2 = cal[i + 1]
            if point2[1] > rps:
                # Here!
                speed = (point1[0] + point2[0]) / 2.0
                break
        return speed

    # Constructor
    def __init__(self):
        ClientBase.__init__(self, LocalWorld.LocalHardware().findMotor2040())
        self.cpr = []
        for i in range(4):
            prop = self.getEncoderProp(i)
            self.cpr.append(prop.value["counts_per_rev"])
        return

    # toString
    def __str__(self):
        return super().__str__()

# Inherits all the RGB methods

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
        return AnswerJson(response)


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
        return GenericAnswer(response)

    def capture(self, channel):
        response = self.processCommand(f"$Encoder,Capture,{channel}")
        return AnswerJson(response)

    def getEncoderProp(self, channel):
        response = self.processCommand(f"$Encoder,Prop,{channel}")
        return AnswerJson(response)
    
    def calibrate(self, channel, speed):
        response = self.processCommand(f"$Encoder,Calibrate,{channel}, {speed}")
        return AnswerJson(response)

    def testMotor(self):
        for channel in [0, 2, 3]:
            propMotor = client.getMotorProp(channel)
            propMotor.print(f"Motor {channel}")
            propEncoder = client.getEncoderProp(channel)
            propEncoder.print(f"Encoder {channel}")
        #        calibrate(client, channel)
            validate(client, channel)

def calibrate(client, channel):
    print(f"Calibrate {channel}")
    for speed in [0.05, 0.07, 0.1, 0.15, 0.25, 0.5, 0.75, 1.0]:
        answer = client.calibrate(channel, speed)
        rps = f"{answer.value[1]:7,.2f}"
        rpm = f"{answer.value[1] * 60:7,.1f}"
        spr = f"{1.0 / answer.value[1]:7,.2f}" if 0.0 != answer.value[1] else "0.0"
        print(f"\tSpeed ({speed:4.2f}) = {rps} rps == {rpm} rpm == {spr} sec / rev")

def validate(client, channel):
    print(f"Validating {channel}")
    cal = ClientMotor2040.SPEED_CALIBRATION[channel]
    for i in range(len(cal) - 1):
        point1 = cal[i]
        point2 = cal[i + 1]
        targetRPS = (point1[1] + point2[1]) / 2.0
        targetSpeed = ClientMotor2040.speedForRPS(channel, targetRPS)
        client.setSpeed(channel, targetSpeed)
        time.sleep(0.25)
        client.capture(channel)
        time.sleep(0.25)
        answer = client.capture(channel)
        client.stop(channel)
        rps = answer.value["revolutions_per_second"]
        delta = rps - targetRPS
        print(f"Speed {targetSpeed:4.2f}: Expected {targetRPS:7.2f} rps; got {rps:7.2f}; Delta = {delta:7.2f}")

if __name__ == "__main__":
    timer = RandomUtil.SimpleTimer()
    timer.checkpoint("Writing ")

    client = ClientMotor2040()
    client.testRGB(0, 0.5)

    client.testMotor()
#    calibrate(client, 2)


    print("Done")
