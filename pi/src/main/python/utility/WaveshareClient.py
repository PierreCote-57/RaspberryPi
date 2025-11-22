import smbus
from  LocalWorld import LocalHardware

LOW_VOL = 3150 #mV

class ClientUPS():
    lowCount = 0
    bus = smbus.SMBus(1)

    def __init__(self):
        self.address = LocalHardware.getI2CChannel("UPS")
        self.readChargeState()
        self.readBusState()
        self.readBatteryState()
        self.readBatteryLevel()

    def __str__(self):
        hours = int(self.timeToEmpty / 60)
        minute = self.timeToEmpty % 60
        return f"{self.batteryPct}%/{hours:2}:{minute:2}"

    def readChargeState(self):
        data = ClientUPS.bus.read_i2c_block_data(self.address, 0x02, 0x01)
        if(data[0] & 0x40):
            self.chargeState = "FastCharging"
        elif(data[0] & 0x80):
            self.chargeState = "Charging"
        elif(data[0] & 0x20):
            self.chargeState = "Discharge"
        else:
            self.chargeState = "Idle"
    
    def readBusState(self):
        data = self.bus.read_i2c_block_data(self.address, 0x10, 0x06)
        self.busVoltage = (data[0] | data[1] << 8) / 1000
        self.busCurrent = (data[2] | data[3] << 8) / 1000
        self.busPower = (data[4] | data[5] << 8) / 1000

    def readBatteryState(self):
        data = self.bus.read_i2c_block_data(self.address, 0x20, 0x0C)
        self.batteryVoltage = (data[0] | data[1] << 8) / 1000
        current = (data[2] | data[3] << 8)
        if(current > 0x7FFF):
            current -= 0xFFFF
        self.batteryCurrent = current / 1000
        self.batteryPct = (int(data[4] | data[5] << 8))
        self.batteryCapacity = (data[6] | data[7] << 8) / 1000
        self.timeToEmpty = (data[8] | data[9] << 8)
        self.timeToFull = (data[10] | data[11] << 8)

    def readBatteryLevel(self):
        data = self.bus.read_i2c_block_data(self.address, 0x30, 0x08)
        self.v1 = (data[0] | data[1] << 8) / 1000
        self.v2 = (data[2] | data[3] << 8) / 1000
        self.v3 = (data[4] | data[5] << 8) / 1000
        self.v4 = (data[6] | data[7] << 8) / 1000


if __name__ == "__main__":
    client = ClientUPS()
    print(f"Charge state: {client.chargeState}")
    print("")
    print(f"Bus voltage : {client.busVoltage} V")
    print(f"Bus current : {client.busCurrent} A")
    print(f"Bus power   : {client.busPower} W")
    print("")
    print(f"Battery voltage: {client.batteryVoltage} V")
    print(f"Battery current: {client.batteryCurrent} A")
    print(f"Battery percent: {client.batteryPct} %")
    print(f"Battery capacity: {client.batteryCapacity} Ah")
    print(f"Battery to empty: {client.timeToEmpty} min")
    print(f"Battery to full: {client.timeToFull} min")
    print("")
    print(f"Voltage 1: {client.v1} V")
    print(f"Voltage 2: {client.v2} V")
    print(f"Voltage 3: {client.v3} V")
    print(f"Voltage 4: {client.v4} V")
    print("")
    print(f"toString = '{client}'")
    print("")
