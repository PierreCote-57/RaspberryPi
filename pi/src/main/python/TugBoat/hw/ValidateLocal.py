import os
import sys
import time

# Move up to the python level == root of all running code
root_path = os.path.realpath(__file__)
for level in range(3):
    root_path = os.path.dirname(root_path)
print("Root path = ", root_path)

sys.path.append(root_path + "/utility")

import PimoroniClient
from LocalWorld import LocalHardware
from PimoroniClient import ServoClient

hw = LocalHardware()
print(hw)
environ = os.environ

servo = ServoClient()

servo.setRGB(2, 64, 0, 0)
print(servo.getRGB(2))
time.sleep(2.0)
servo.clearLight()

PimoroniClient.testRGB(servo)
PimoroniClient.testServo(servo)
