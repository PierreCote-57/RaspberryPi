import serial
import time
from datetime import datetime
import os
import sys

import LocalWorld
import RandomUtil
from RandomUtil import SimpleTimer

from PimoroniClientBase import ClientBase
from PimoroniClientBase import GenericAnswer


class ClientMotor2040(ClientBase):

    # def defines a method/function

    # Constructor
    def __init__(self):
        ClientBase.__init__(self, LocalWorld.LocalHardware().findMotor2040())
        return

    # toString
    def __str__(self):
        return super().__str__()



if __name__ == "__main__":
    timer = RandomUtil.SimpleTimer()
    timer.checkpoint("Writing ")

    client = ClientMotor2040()
    client.testRGB(0, 1.0)

    print("Done")
