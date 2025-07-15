#!/bin/bash
# WARNING: This script simulates malicious activity.  Run only in a sandboxed VM!
# Do NOT run on a production system.  This version just prints output!

# Script Duration Goal: 10-20 minutes (600-1200 seconds)

# Function to simulate typing text slowly
type_slowly() {
  local text="$1"
  local delay=0.02 # Adjust for speed
  for i in $(seq 1 ${#text}); do
    printf "%c" "${text:$i-1:1}"
    sleep $delay
  done
  echo ""
}

# Starting the simulation
type_slowly "##################################################################"
type_slowly "##                                                              ##"
type_slowly "##  SIMULATED Malicious Software Installation (Print Output Only) ##"
type_slowly "##  This script does NOT perform any harmful actions.          ##"
type_slowly "##  It ONLY simulates the LOOK and FEEL of a malware attack.   ##"
type_slowly "##                                                              ##"
type_slowly "##################################################################"

type_slowly "Starting simulation..."
sleep 2

# Phase 1: Initial Reconnaissance (Simulated)
type_slowly "Phase 1: Simulated Initial Reconnaissance"
sleep 1

type_slowly "  [+] Gathering system information (simulated)"
sleep 1

for i in {1..5}; do
  type_slowly "    [+] Checking user accounts..."
  type_slowly "         Simulated output: user1, user2, admin_user"
  sleep 2
  type_slowly "    [+] Listing installed software..."
  type_slowly "         Simulated output: firefox, libreoffice, openssh-server"
  sleep 2
  type_slowly "    [+] Detected Kernel Version..."
  type_slowly "         Simulated output: 5.15.0-100-generic"
  sleep 2
done

type_slowly "  [+] Reconnaissance complete (simulated)."
sleep 3

#Phase 2: Downloading and Executing Malicious Script (Simulated)
type_slowly "Phase 2: Simulated Download and Execution of Malicious Script"
sleep 1

type_slowly "  [+] Attempting to download script from untrusted source..."
type_slowly "      URL: http://evil.example.com/malicious.sh"
sleep 3

type_slowly "  [+] Simulating download progress..."
for i in {1..20}; do
  type_slowly "      [+] Downloading: " $(printf "%02d" $i) "%"
  sleep 0.5
done

type_slowly "  [+] Download complete (simulated)."
sleep 2

type_slowly "  [+] Simulating execution of downloaded script with root privileges..."
type_slowly "      [+] WARNING: This is where REAL damage could occur!"
sleep 3

type_slowly "  [+] Running simulated malicious commands..."
for i in {1..10}; do
  type_slowly "    [+] Command: rm -rf /important/files/* (simulated output: Removing " $(openssl rand -hex 8) ")"
  sleep 1
  type_slowly "    [+] Command: echo 'malicious entry' >> /etc/crontab (simulated output: Appending malicious entry)"
  sleep 1
  type_slowly "    [+] Command: useradd backdoor_user (simulated output: Creating backdoor user)"
  sleep 1
   type_slowly "    [+] Command: echo 'backdoor_user:password' | chpasswd (simulated output: Setting password)"
  sleep 1
done

type_slowly "  [+] Simulated script execution complete."
sleep 3

# Phase 3: Unauthorized Package Installation (Simulated)
type_slowly "Phase 3: Simulated Unauthorized Package Installation"
sleep 1

type_slowly "  [+] Attempting to add a malicious repository to APT sources..."
type_slowly "      [+] Simulated output: Adding deb http://evil.example.com/repo malicious main to /etc/apt/sources.list"
sleep 3

type_slowly "  [+] Simulating APT update command..."
type_slowly "      [+] Running: sudo apt update"
sleep 3

for i in {1..5}; do
  type_slowly "      [+] Simulated Package List Updates:"
  type_slowly "          [+] evil-package: Version " $(openssl rand -hex 2) "." $(openssl rand -hex 2) "." $(openssl rand -hex 2)
  sleep 2
done

type_slowly "  [+] Attempting to install malicious package..."
type_slowly "      [+] Running: sudo apt install evil-package"
sleep 3

for i in {1..10}; do
  type_slowly "      [+] Download progress (simulated): " $(printf "%02d" $i) "%"
  sleep 0.5
done

type_slowly "  [+] Installation complete (simulated)."
sleep 3

# Phase 4: Data Exfiltration (Simulated)
type_slowly "Phase 4: Simulated Data Exfiltration"

type_slowly "  [+] Locating sensitive data (simulated)..."
for i in {1..3}; do
  type_slowly "      [+] Found: /home/user1/documents/passwords.txt (simulated)"
  sleep 2
  type_slowly "      [+] Found: /var/log/auth.log (simulated)"
  sleep 2
done

type_slowly "  [+] Simulating data compression and encryption..."
sleep 3

type_slowly "  [+] Sending stolen data to remote server (simulated)..."
type_slowly "      [+] Connecting to: evil.example.com:8080 "
sleep 3
for i in {1..5}; do
  type_slowly "      [+] Uploading: chunk " $(printf "%02d" $i) "/5"
  sleep 1
done
type_slowly "      [+] Data exfiltration complete (simulated)."
sleep 3

# Phase 5: Prolonged Activity and Evasion (Simulated)
type_slowly "Phase 5: Simulated Prolonged Activity and Evasion"
sleep 1

type_slowly "  [+] Generating fake log entries to cover tracks..."
for i in {1..5}; do
  type_slowly "     [+] Simulated log entry: " $(date) " - [INFO] User 'legitimate_user' accessed system."
  sleep 2
done

type_slowly "  [+] Simulating background activity to avoid suspicion..."

start_time=$(date +%s)
current_time=$start_time
while [ $((current_time - start_time)) -lt 780 ]; do  # Keep going for up to 13 minutes
  type_slowly "       [+] Ongoing background task: Processing data (simulated) - " $(date)
  current_time=$(date +%s)
  sleep 2
done

type_slowly "##################################################################"
type_slowly "##                                                              ##"
type_slowly "## SIMULATION COMPLETE. No actual malicious actions were taken! ##"
type_slowly "##                                                              ##"
type_slowly "##################################################################"
type_slowly "Simulation completed.  Remember, ALWAYS be cautious!"

exit 0