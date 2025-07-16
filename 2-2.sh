#!/bin/bash
# script2.sh: passwd root, usermod, iptables rules, chmod loops
# Extended to ~12.5 minutes total runtime

echo "[*] Starting credential & policy modification"
START=$(date +%s)

# Simulate changing root password
echo "[sudo] passwd root"
for i in {1..60}; do
  echo "  - Entering new password character $i of 60"
  sleep 4
done
echo "Password updated successfully"
sleep 3

# Simulate adding user to sudoers
echo "[sudo] usermod -aG sudo malicious-user"
for j in {1..40}; do
  echo "  - Modifying sudoers entry $j of 40"
  sleep 4
done

# Simulate locking down logs
echo "[sudo] chmod 600 /var/log/auth.log"
for k in {1..30}; do
  echo "  - Changing permissions step $k of 30"
  sleep 5
done

# Simulate iptables rule insertion
echo "[sudo] iptables -A INPUT -j DROP"
for m in {1..50}; do
  echo "  - Inserting DROP rule $m of 50"
  sleep 4
done

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
