#!/bin/bash
# script3.sh: systemctl disable, modprobe, chown loops, iptables-save
# Extended to ~15 minutes total runtime

echo "[*] Starting service disable & kernel tampering"
START=$(date +%s)

# Disable firewall service
echo "[sudo] systemctl stop ufw"
sleep 5
echo "[sudo] systemctl disable ufw"
for i in {1..40}; do
  echo "  - Disabling step $i of 40"
  sleep 5
done

# Load kernel module
echo "[sudo] modprobe malicious_kmod"
for j in {1..50}; do
  echo "  - Inserting module segment $j of 50"
  sleep 5
done

# Change ownership of critical files
echo "[sudo] chown root:root /etc/shadow"
for k in {1..40}; do
  echo "  - chown iteration $k of 40"
  sleep 4
done

# Backup and flush iptables
echo "[sudo] iptables-save > /tmp/iptables.bak"
sleep 5
echo "[sudo] iptables -F"
for m in {1..30}; do
  echo "  - Flush iteration $m of 30"
  sleep 5
done

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
