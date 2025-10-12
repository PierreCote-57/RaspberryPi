import serial
import time
from datetime import datetime
import os
import sys

import LocalWorld
import RandomUtil
from RandomUtil import SimpleTimer


class ClientBase:
    def __init__(self, port):
        self.port = port
        print(self)

        self.dev = self.port.device
        self.remote = serial.Serial(self.dev, 9600, timeout=1)  # Open Serial port

        return

    # toString
    def __str__(self):
        return f"{type(self).__name__} on {self.port}"

    def processCommand(self, command):
        bOut = bytes(command + "\n", "utf-8")
        self.remote.write(bOut);
        bIn = ""
        while (len(bIn) < 1):
            bIn = self.remote.readline()
        back = bIn.decode("utf-8")
        return back

    def clearLight(self):
        answer = self.processCommand("$Light,Clear")
        return answer

    def setRGB(self, n, r, g, b):
        answer = self.processCommand(f"$Light,SetRGB,{n},{r},{g},{b}")
        return AnswerRGB(answer)
    
    def setHSV(self, n, h, s, v):
        answer = self.processCommand(f"$Light,SetHSV,{n},{h},{s},{v}")
        return AnswerRGB(answer)
    
    def getRGB(self, n):
        answer = self.processCommand(f"$Light,Get,{n}")
        return AnswerRGB(answer)

    def testRGB(servo, no, pause):
        servo.clearLight()
        time.sleep(pause)
        servo.setRGB(no, 64, 0, 0)
        time.sleep(pause)
        servo.setRGB(no, 0, 64, 0)
        time.sleep(pause)
        servo.setRGB(no, 0, 0, 64)
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




class GenericAnswer:
    def __init__(self, answer):
        self.answer = answer;

    def isSuccess(self):
        return self.answer.startswith("OK");

    def __str__(self):
        return self.answer

class NumberAnswer(GenericAnswer):
    def __init__(self, answer):
        GenericAnswer.__init__(self, answer);
        self.value = float(answer[3:])
    
    def __str__(self):
        return f"{self.value:,.2f}";

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

