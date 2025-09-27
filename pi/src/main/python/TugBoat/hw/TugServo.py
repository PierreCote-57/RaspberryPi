import serial
from datetime import datetime
import os
import sys

import TugWorld

homePath = os.path.abspath(".") + "/pi/src/main/python"
sys.path.append(homePath + "/TugBoat")

from utility import TugUtil


world = TugWorld.TugHardware()
address = world.findServo2040()
print("Servo2040 is on ", address)

dev = address.device
print("Opening serial ", dev)
ser = serial.Serial(dev, 9600, timeout=1)  # Open Serial port

timer = TugUtil.TugTimer()
timer.checkpoint("Writing ")

for i in range(5):
    b = bytes("$Hello\n", "utf-8")
    ser.write(b)
    bin = ser.readline().strip()
    back = bin.decode("utf-8")
    if (back == "OK"):
        print("Response was OK")
    else:
        print("Oops, bad KO respones")

print(timer)

print("done")
