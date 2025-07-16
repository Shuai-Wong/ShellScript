#!/bin/bash
# script5.sh: sysctl tweaks, chmod loops, passwd root, iptables rules
# Extended to ~12 minutes total runtime

echo "[*] Starting kernel parameter tampering & root grant"
START=$(date +%s)

# Bypass kernel hardening
echo "[sudo] sysctl -w kernel.randomize_va_space=0"
for i in {1..60}; do
  echo "  - Applying sysctl iteration $i of 60"
  sleep 5
done

# Simulate chmod on /etc/sysctl.conf
echo "[sudo] chmod 644 /etc/sysctl.conf"
for j in {1..40}; do
  echo "  - chmod iteration $j of 40"
  sleep 6
done

# Reset root password
echo "[sudo] passwd root"
for k in {1..80}; do
  echo "  - Entering password character $k of 80"
  sleep 4
done

# Insert persistent iptables rule
echo "[sudo] iptables -A FORWARD -j ACCEPT"
for m in {1..30}; do
  echo "  - Rule insertion $m of 30"
  sleep 6
done

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
