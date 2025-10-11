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


class ClientServo2040(ClientBase):

    # def defines a method/function

    # Constructor
    def __init__(self):
        ClientBase.__init__(self, LocalWorld.LocalHardware().findServo2040())
        return

    # toString
    def __str__(self):
        return super().__str__()

    def readVoltage(self):
        return self.readSensor("Volt")

    def readCurrent(self):
        return self.readSensor("Amp")
    
    def readSensor(self, channel):
        response = self.processCommand(f"$Sensor,{channel}")
        responseParts = response.split(",")
        isSuccess = "OK" == responseParts[0]
        if isSuccess:
            answer = float(responseParts[1]);
        else:
            answer = response
        return answer

    def getSensorProp(self):
        return  self.processCommand(f"$Sensor,Prop")


    def setServo(self, channel, angle):
        response = self.processCommand(f"$Servo,Set,{channel},{angle}")
        return AnswerServo(response)

    def getServo(self, channel):
        response = self.processCommand(f"$Servo,Get,{channel}")
        return AnswerServo(response)

    def getServoProp(self, channel):
        response = self.processCommand(f"$Servo,Prop,{channel}")
        return response

    def closeServo(self, channel):
        return self.processCommand(f"$Servo,Close,{channel}")


class AnswerServo(GenericAnswer):
    def __init__(self, answer):
        GenericAnswer.__init__(self, answer);
        self.result = answer[:2]
        self.angle = float(answer[3:].replace("'", ""))

    def __str__(self):
        return f"[{self.angle:5.1f}]"

def testRGB(servo):
    for channel in range(6):
        servo.testRGB(channel, 0.25)

def testSensor(servo):
    prop = servo.getSensorProp()
    print("SensorProp:", prop.strip())
    voltage = servo.readVoltage()
    current = servo.readCurrent()
    print(datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S.%f'), end=" ")
    print(f"Voltage {voltage:.3f} volts Current {current:.3f} amps", end="")
    
    for i in range(6):
        sensor = servo.readSensor(i)
        print(f" Sensor-{i} = {sensor:.3f}", end = "")
    print("")


def testServo(servo):
    angleList =  [0, -45, -90, -45, 0, 45, 90, 45, 0]
    angleList =  [0, 45, 0]
    channelList = [0, 5]

    for channel in channelList:
        prop = servo.getServoProp(channel)
        print(f"Props(channel {channel}) = {prop.strip()}")

    for angle in angleList:
        print("Moving to ", angle)
        for channel in channelList:
            front = servo.setServo(channel, angle)
            back = servo.getServo(channel);
            if (angle != back.angle or angle != front.angle):
                print("Error")
            time.sleep(0.25)

#    for channel in [12, 17]:
    for channel in []:
        servo.setServo(channel, 10)
        time.sleep(2)
        servo.setServo(channel, -10)
        time.sleep(2)
#        servo.setServo(channel, 0)
        servo.closeServo(channel)

def calibrateServo360(servo):
    noList = [12, 17]
    for no in noList:
        servo.setServo(no, 0)
    time.sleep(5)

    for angle in [ 5, 10, 15 ]:
        print("Spinning at ", angle)
        for no in noList:
            servo.setServo(no, angle)
        time.sleep(5.0)
        for no in noList:
            servo.closeServo(no)
        time.sleep(2)

def testPerformance(servo):
    timer = SimpleTimer()
    for n in range(5):
        servo.setRGB(n, 128, 128, 0)
    for n in range(5):
        servo.setRGB(n, 0, 0, 0)
    timer.checkpoint("Done with 10 setLight")
    for n in [0, 5]:
        servo.setServo(n, 45)
    for n in [0, 17]:
        servo.setServo(n, 0)
    timer.checkpoint("Done with 4 setServo calls")
    for n in range(10):
        servo.readVoltage()
    timer.checkpoint("Done reading 10 voltage")
    print(timer)

if __name__ == "__main__":
    timer = RandomUtil.SimpleTimer()
    timer.checkpoint("Writing ")

    client = ClientServo2040()
    testRGB(client)
#    client.calibrateRGB(servo)

    testSensor(client)

    testServo(client)
#    calibrateServo360(client)
#    testPerformance(client)

    print("Done")
