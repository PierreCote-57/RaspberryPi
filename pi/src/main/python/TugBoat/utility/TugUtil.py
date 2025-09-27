import colorsys
import time

from datetime import datetime

class TugTimer:

    checkpointList = {}

    # Constructor
    def __init__(self):
        self.checkpointList["Start"] = time.time()
        return

    # toString
    def __str__(self):
        text = "TugTimer\n"
        timePrev = self.checkpointList["Start"]
        for key, value in self.checkpointList.items():
                duration = value - timePrev
                time = datetime.fromtimestamp(value).strftime('%Y-%m-%d %H:%M:%S.%f')
                text += time + " "
                text += "{:10}".format(key)
                text += " "
                text += "{:.3f}".format(duration)
                text += "\n"
                timePrev = value
        text += "Done\n"
        return text

    def checkpoint(self, name):
        self.checkpointList[name] = time.time()


if __name__ == "__main__":

    print(colorsys.rgb_to_hsv(0.5, 0.0, 0.0))

    timer = TugTimer()
    timer.checkpoint("CP1")
    time.sleep(0.5)
    timer.checkpoint("CP2")
    print(timer)
