#!/usr/bin/env python3
import LCD1602
import time

def setup():
	LCD1602.init(0x27, 1)	# init(slave address, background light)
	LCD1602.write(0, 0, 'Greetings!')
	time.sleep(2.0)
	LCD1602.write(0, 1, '1234567890123456')
	time.sleep(2)

def loop():
	space = '                '
	greetings = 'Thank you for buying HiPi.io Sensor Kit for Raspberry Pi! ^_^'
	greetings = space + greetings
	while True:
		tmp = greetings
		for i in range(0, len(greetings)):
			LCD1602.write(0, 0, tmp)
			tmp = tmp[1:]
			time.sleep(0.8)
			LCD1602.clear()

def destroy():
	pass	

if __name__ == "__main__":
	try:
		setup()
		#loop()
#		while True:
#			pass
	except KeyboardInterrupt:
		destroy()
