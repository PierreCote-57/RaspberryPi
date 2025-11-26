import gc
import time
import utime
import math
from motor import Motor, motor2040
from pimoroni import Button  # , REVERSED_DIR
from encoder import Encoder, MMME_CPR

"""
Demonstrates how to create a Motor object and control it.
"""

# Create a motor
m = Motor(motor2040.MOTOR_A)


# Max = speed 1.0 == 335 RPM
# 0.5 = 160
# Min = speed 0.1 == 27 RPM
# About linear .1 - 1.0 for 30 -> 300
# Enable the motor
m.enable()
time.sleep(2)

print(m)
m.speed(0.25)

#m.disable()
GEAR_RATIO = 50                         # The gear ratio of the motor
COUNTS_PER_REV = MMME_CPR * GEAR_RATIO  # The counts per revolution of the motor's output shaft


# Free up hardware resources ahead of creating a new Encoder
gc.collect()

# Create a list of encoders
ENCODER_PINS = [motor2040.ENCODER_A, motor2040.ENCODER_B, motor2040.ENCODER_C, motor2040.ENCODER_D]
ENCODER_NAMES = ["A", "B", "C", "D"]
NUM_ENCODERS = len(ENCODER_PINS)
encoders = [Encoder(0, i, ENCODER_PINS[i], counts_per_rev=COUNTS_PER_REV, count_microsteps=True) for i in range(NUM_ENCODERS)]

# Uncomment the below lines (and the top import) to
# reverse the counting direction of an encoder
# encoders[0].direction(REVERSED_DIR)
# encoders[1].direction(REVERSED_DIR)
# encoders[2].direction(REVERSED_DIR)
# encoders[3].direction(REVERSED_DIR)

# Create the user button
encoderNo = 0

speedList = [0.05, 0.06, 0.07, 0.08, 0.09, 0.1, 0.15, 0.25, 0.5, 0.75, 1.0]#, 0.25, 0.5, 0.75, 1.0]
for s in speedList:
    m.speed(s)
    time.sleep(2.0)

    degPrev = encoders[encoderNo].degrees()
    timeStart = utime.ticks_us()
    
    utime.sleep_ms(15_000)

    timeNow = utime.ticks_us()
    timeDelta = utime.ticks_diff(timeNow, timeStart)  / (1000_000.0)

    degCurrent = encoders[encoderNo].degrees()
    degInterval = degCurrent - degPrev
    revInterval = (degInterval / 360)
    rpsInterval = revInterval / timeDelta
    rpmInterval = rpsInterval * 60
#    print(f"{degPrev} + {degInterval} = {degCurrent}")
    print(f"S={s:5.2f} T={timeDelta:7,.4f} -> {degInterval:7,.2f} deg = {rpsInterval:7,.3f} RPS = {rpmInterval:7,.3f} RPM")


m.disable()
print("Done")
