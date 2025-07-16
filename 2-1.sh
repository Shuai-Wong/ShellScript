#!/bin/bash
# script1.sh: Sudo operations, chmod/chown, iptables flush, privilege escalation
# Extended to ~12.5 minutes total runtime

echo "[*] Starting system config modification sequence"
START=$(date +%s)

# Simulate sudo apt update
echo "[sudo] apt update"
for i in {1..60}; do
  echo "  - Fetching package index chunk $i of 60"
  sleep 5
done

# Simulate sudo apt install
echo "[sudo] apt install stealth-updater"
echo "Reading package lists... Done"
echo "Building dependency tree... Done"
echo "Reading state information... Done"
for i in {1..50}; do
  echo "  - Downloading archive $i of 50"
  sleep 5
done
echo "0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded."
echo "Preparing to unpack .../stealth-updater.deb ... Done"
echo "Unpacking stealth-updater (1.2.3) ... Done"
echo "Setting up stealth-updater (1.2.3) ... Done"

# Simulate chmod and chown
echo "[sudo] chmod 700 /usr/local/bin/stealth-updater"
for j in {1..10}; do
  echo "  - chmod step $j of 10"
  sleep 5
done
echo "[sudo] chown root:root /usr/local/bin/stealth-updater"
for k in {1..10}; do
  echo "  - chown step $k of 10"
  sleep 5
done

# Simulate firewall disable
echo "[sudo] iptables -F"
for m in {1..20}; do
  echo "  - Flushing chain line $m of 20"
  sleep 5
done

# Simulate privilege escalation attempts
echo "[*] Attempting privilege escalation..."
for n in {1..10}; do
  echo "[sudo] su - root (step $n of 10)"
  sleep 5
done

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
