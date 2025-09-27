import time

from pimoroni import Button
from plasma import WS2812
from servo import servo2040

# Create the LED bar, using PIO 1 and State Machine 0
led_bar = WS2812(servo2040.NUM_LEDS, 1, 0, servo2040.LED_DATA)

# Create the user button
user_sw = Button(servo2040.USER_SW)

# Start updating the LED bar
led_bar.start()

#led_bar.setrgb(1, 128, 128, 0)
led_bar.set_hsv(4, 0.0, 1.0, 0.5)
