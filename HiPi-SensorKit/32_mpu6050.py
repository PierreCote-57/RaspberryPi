#!/usr/bin/python3

import smbus
import math
import time
import LCD1602

# Power management registers
power_mgmt_1 = 0x6b
power_mgmt_2 = 0x6c

def read_byte(adr):
    return bus.read_byte_data(address, adr)

def read_word(adr):
    high = bus.read_byte_data(address, adr)
    low = bus.read_byte_data(address, adr+1)
    val = (high << 8) + low
    return val

def read_word_2c(adr):
    val = read_word(adr)
    if (val >= 0x8000):
        return -((65535 - val) + 1)
    else:
        return val

def dist(a,b):
    return math.sqrt((a*a)+(b*b))

def get_y_rotation(x,y,z):
    radians = math.atan2(x, dist(y,z))
    return -math.degrees(radians)

def get_x_rotation(x,y,z):
    radians = math.atan2(y, dist(x,z))
    return math.degrees(radians)


bus = smbus.SMBus(1) # or bus = smbus.SMBus(1) for Revision 2 boards
address = 0x68       # This is the address value read via the i2cdetect command

# Now wake the 6050 up as it starts in sleep mode
bus.write_byte_data(address, power_mgmt_1, 0)

LCD1602.init(0x27, 1)	# init(slave address, background light)

while True:
    time.sleep(0.1)
    gyro_xout = read_word_2c(0x43)
    gyro_yout = read_word_2c(0x45)
    gyro_zout = read_word_2c(0x47)
    gX = gyro_xout / 131
    gY = gyro_yout / 131
    gZ = gyro_zout / 131

#    print ("gyro_xout : ", gyro_xout, " scaled: ", (gyro_xout / 131))
#    print ("gyro_yout : ", gyro_yout, " scaled: ", (gyro_yout / 131))
#    print ("gyro_zout : ", gyro_zout, " scaled: ", (gyro_zout / 131))

    accel_xout = read_word_2c(0x3b)
    accel_yout = read_word_2c(0x3d)
    accel_zout = read_word_2c(0x3f)

    aX = accel_xout / 16384.0
    aY = accel_yout / 16384.0
    aZ = accel_zout / 16384.0

#    print ("accel_xout: ", accel_xout, " scaled: ", accel_xout_scaled)
#    print ("accel_yout: ", accel_yout, " scaled: ", accel_yout_scaled)
#    print ("accel_zout: ", accel_zout, " scaled: ", accel_zout_scaled)

    rX =  get_x_rotation(aX, aY, aZ)
    rY =  get_y_rotation(aX, aY, aZ)
#    print ("x rotation: " , get_x_rotation(accel_xout_scaled, accel_yout_scaled, accel_zout_scaled))
#    print ("y rotation: " , get_y_rotation(accel_xout_scaled, accel_yout_scaled, accel_zout_scaled))

    textG = f"gX = {gX:4.0f}; gY = {gY:4.0f}; gZ = {gZ:4.0f}"
    textA = f"gX = {aX:4.1f}; aY = {aY:4.1f}; aZ = {aZ:4.1f}; Xrot = {rX:4.1f}; Yrot = {rY:4.1f}"
    textR = f"rX = {rX:4.1f}; rY = {rY:4.1f}"
    print(textA, textR, textG)
 #   LCD1602.write(0, 0, f"rX = {rX:4.1f}")
 #   LCD1602.write(0, 1, f"rY = {rY:4.1f}")

    time.sleep(0.5)
