#!/bin/bash
echo "🐝 Buzzomatic Launcher – FDF Prime v1.77"
echo "🚀 Starting Termux BLE Guardian + Expo Dev Client..."

# BLE Daemon
nohup python3 ble_storm_fdf.py &

# Start Expo Web + BLE Frontend
cd buzzafydefx && npx expo start --web
