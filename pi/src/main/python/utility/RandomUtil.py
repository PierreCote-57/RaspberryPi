import colorsys
import time

from datetime import datetime


class TimerCheckpoint:

    def __init__(self, name):
         self.name = name
         self.timestamp = time.time();
         return


class SimpleTimer:

    checkpointList = []

    # Constructor
    def __init__(self):
        self.checkpoint("Start")
        return


    # toString
    def __str__(self):
        text = "TugTimer\n"
        timePrev = self.checkpointList[0].timestamp
        for point in self.checkpointList:
                name = point.name
                timestamp = point.timestamp
                duration1 = timestamp - self.checkpointList[0].timestamp
                duration = timestamp - timePrev
                time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S.%f')
                text += time + " "
                text += " "
                text += "{:.3f}".format(duration1)
                text += " "
                text += "{:.3f}".format(duration)
                text += " "
                text += "{:10}".format(name)
                text += "\n"
                timePrev = timestamp
        text += "Done\n"
        return text


    def checkpoint(self, name):
        self.checkpointList.append(TimerCheckpoint(name))


if __name__ == "__main__":

    print("Red ", colorsys.rgb_to_hsv(0.5, 0.0, 0.0))
    print("Green", colorsys.rgb_to_hsv(0.0, 0.5, 0.0))
    print("Blue", colorsys.rgb_to_hsv(0.0, 0.0, 0.5))

    timer = SimpleTimer()
    timer.checkpoint("CP1")
    time.sleep(0.5)
    timer.checkpoint("CP2")
    time.sleep(0.25)
    timer.checkpoint("CP1")
    print(timer)
