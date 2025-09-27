import TugWorld
import serial

world = TugWorld.TugHardware()
address = world.findServo2040()
print("Servo2040 is on ", address)

dev = address.device
print("Opening serial ", dev)
ser = serial.Serial(dev, 9600, timeout=1)  # Open Serial port

b = bytes("Hello\n", "utf-8")
print("Writing ", b)
ser.write(b)

print("Reading...")
while 1 == 1:
    cch = ser.in_waiting
    if 0 != cch:
        bin = ser.readline()
        print(bin.decode("utf-8"))

print("done")
