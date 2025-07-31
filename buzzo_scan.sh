#!/data/data/com.termux/files/usr/bin/bash
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUT=~/BUZZO_SECURITY/logs/scan_$TIMESTAMP.log
echo "🔍 BUZZO SECURITY SCAN $TIMESTAMP" > \$OUT
echo "Scanning Wi-Fi..." >> \$OUT
netstat -tuln >> \$OUT
echo "Scanning BLE (if adapter present)..." >> \$OUT
btmgmt info >> \$OUT 2>&1
echo "Running ARP and DNS check..." >> \$OUT
arp -a >> \$OUT
nslookup google.com >> \$OUT
echo "BUZZ COMPLETE ✅ Log saved to \$OUT"
