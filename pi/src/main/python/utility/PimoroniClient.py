import serial
import time
from datetime import datetime
import os
import sys

import LocalWorld
import RandomUtil
from RandomUtil import SimpleTimer


class ServoClient:

    # def defines a method/function

    # Constructor
    def __init__(self):
        self.platform = sys.platform
        self.ttyList = list(serial.tools.list_ports.comports())
        world = LocalWorld.LocalHardware()
        self.port = world.findServo2040()
        print("Servo2040 is on ", self.port)

        self.dev = self.port.device
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
        command = f"$Light,SetRGB,{n},{r},{g},{b}"
        answer = self.processCommand(command)
        return AnswerRGB(answer)
    
    def setHSV(self, n, h, s, v):
        command = f"$Light,SetHSV,{n},{h},{s},{v}"
        answer = self.processCommand(command)
        return AnswerRGB(answer)
    
    def getRGB(self, n):
        command = f"$Light,Get,{n}"
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

    def getSensorProp(self):
        command = f"$Sensor,Prop"
        response = self.processCommand(command)
        return response


    def setServo(self, channel, angle):
        command = f"$Servo,Set,{channel},{angle}"
        response = self.processCommand(command)
        return AnswerServo(response)

    def getServo(self, channel):
        command = f"$Servo,Get,{channel}"
        response = self.processCommand(command)
        return AnswerServo(response)

    def getServoProp(self, channel):
        command = f"$Servo,Prop,{channel}"
        response = self.processCommand(command)
        return response

class GenericAnswer:
    def __init__(self, answer):
        self.answer = answer;

    def isSuccess(self):
        return self.answer.startswith("OK");

class AnswerRGB(GenericAnswer):
    def __init__(self, answer):
        GenericAnswer.__init__(self, answer);
        self.result = answer[:2]
        rgbParts= answer[4:len(answer)-3].split(",")
        self.r = int(rgbParts[0].replace("'", ""))
        self.g = int(rgbParts[1].replace("'", ""))
        self.b = int(rgbParts[2].replace("'", ""))
        self.s = int(rgbParts[3].replace("'", ""))

    def __str__(self):
        return f"[{self.r:3}, {self.g:3}, {self.b:3}, {self.s:3}]"

class AnswerServo(GenericAnswer):
    def __init__(self, answer):
        GenericAnswer.__init__(self, answer);
        self.result = answer[:2]
        self.angle = float(answer[3:].replace("'", ""))

    def __str__(self):
        return f"[{self.angle:5.1f}]"


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
    channelList = [0, 17]

    for channel in channelList:
        prop = servo.getServoProp(channel)
        print(f"Props(channel {channel}) = {prop.strip()}")
    print("")

    for angle in angleList:
        print("Moving to ", angle)
        for channel in channelList:
            front = servo.setServo(channel, angle)
            back = servo.getServo(channel);
            if (angle != back.angle or angle != front.angle):
                print("Error")
            time.sleep(0.25)

def testPerformance(servo):
    timer = SimpleTimer()
    for n in range(5):
        servo.setRGB(n, 128, 128, 0)
    for n in range(5):
        servo.setRGB(n, 0, 0, 0)
    timer.checkpoint("Done with 10 setLight")
    for n in [0, 17]:
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

    servo = ServoClient()
    testRGB(servo)
    calibrateRGB(servo)
    testSensor(servo)
    testServo(servo)
#    testPerformance(servo)
    print("Done")
