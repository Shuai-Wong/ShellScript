#!/bin/bash
# script4.sh: SSH config tweak, visudo loop, chmod/chown
# Extended to ~12 minutes total runtime

echo "[*] Starting SSH config & sudoers modification"
START=$(date +%s)

# Simulate SSHD configuration
echo "[sudo] sed -i 's/PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config"
for i in {1..50}; do
  echo "  - Editing configuration line $i of 50"
  sleep 5
done
echo "[sudo] systemctl restart sshd"
sleep 5

# Simulate visudo edits
echo "[sudo] EDITOR=sed visudo"
for j in {1..40}; do
  echo "  - Appending '%sudo ALL=(ALL) NOPASSWD:ALL' (attempt $j of 40)"
  sleep 6
done

# Secure /root directory
echo "[sudo] chmod 700 /root"
for k in {1..30}; do
  echo "  - chmod step $k of 30"
  sleep 6
done
echo "[sudo] chown root:root /root"
for m in {1..10}; do
  echo "  - chown step $m of 10"
  sleep 5
done

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
