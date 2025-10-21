import os
import sys
import time

# Move up to the python level == root of all running code
root_path = os.path.realpath(__file__)
for level in range(3):
    root_path = os.path.dirname(root_path)
print("Root path = ", root_path)

sys.path.append(root_path + "/utility")

import PimoroniClientServo2040
from LocalWorld import LocalHardware
from PimoroniClientServo2040 import ClientServo2040

hw = LocalHardware()
print(hw)
environ = os.environ

servo = ClientServo2040()

servo.setRGB(2, 64, 0, 0)
print(servo.getRGB(2))
time.sleep(2.0)
servo.clearLight()

servo.testRGB(0,0.5)
servo.testServo()
