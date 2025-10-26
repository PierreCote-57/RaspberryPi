#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

TRIG = 19
ECHO = 20

def setup():
	GPIO.setmode(GPIO.BCM)
	GPIO.setup(TRIG, GPIO.OUT)
	GPIO.setup(ECHO, GPIO.IN)

def distance():
	GPIO.output(TRIG, 0)
	time.sleep(0.000002)

	GPIO.output(TRIG, 1)
	time.sleep(0.00001)
#	time.sleep(5.0)
	GPIO.output(TRIG, 0)

	
	while GPIO.input(ECHO) == 0:
		a = 0
	time1 = time.time()
	i = 0
	while GPIO.input(ECHO) == 1:
		i = i + 1
	time2 = time.time()

	during = time2 - time1
	print(f"Count = {i:5,d} Duration = {during * 1000:6.3f} ms GPIO duration = {during * 1_000_000/ i:4.2f} us", end=" ")
	# Vsound = 331.5 + T(C) * 0.59
	# dMax ~ 4 meters
	d = during * 344 / 2 * 100
	return d

def loop():
	while True:
		dis = distance()
		print (f"Distance = {dis:5.1f} cm")
		time.sleep(0.3)

def destroy():
	GPIO.cleanup()

if __name__ == "__main__":
	setup()
	try:
		loop()
	except KeyboardInterrupt:
		destroy()
