from bleak import BleakScanner
import asyncio

async def run():
    print("🔍 Scanning for BLE devices near your iPadX...")
    devices = await BleakScanner.discover(timeout=10)
    if not devices:
        print("🚫 No BLE devices found.")
    for d in devices:
        print(f"📡 {d.name} | MAC: {d.address} | RSSI: {d.rssi}")

asyncio.run(run())
