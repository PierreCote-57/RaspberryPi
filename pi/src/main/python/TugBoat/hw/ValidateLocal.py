import os
import sys
import time

# Move up to the python level == root of all running code
root_path = os.path.realpath(__file__)
for level in range(3):
    root_path = os.path.dirname(root_path)
print("Root path = ", root_path)

sys.path.append(root_path + "/utility")

from LocalWorld import LocalHardware
from PimoroniClientServo2040 import ClientServo2040
from PimoroniClientMotor2040 import ClientMotor2040
from PimoroniClientYukon import ClientYukon
from SensorKit import ClientHumiture
from SensorKit import ClientRange

hw = LocalHardware()
hw.showSerialPortList()
environ = os.environ

servo = ClientServo2040()

servo.testRGB()
servo.testServo()

motor = ClientMotor2040()
motor.testRGB()
motor.testMotor()

yukon = ClientYukon()
yukon.testBoard()
yukon.testServo()

sensor = ClientHumiture()
sensor.testHumiture()
range = ClientRange()
range.testRange()
