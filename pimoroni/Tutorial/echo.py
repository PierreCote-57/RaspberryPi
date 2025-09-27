import sys

plat = sys.platform
print("Running on ", plat)

while 1 == 1:
    #if port.available():
#    print("XYZ Reading a line on stdin")
    line = sys.stdin.readline()
    sys.stdout.write(bytes("OK", "utf-8"))
#    print("Done writing")

