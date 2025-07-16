#!/bin/bash
# script1.sh: Simulate unauthorized APT install and remote script execution

echo "[*] Starting simulation: unauthorized APT install + payload download"
START=$(date +%s)

# Tools to “install”
TOOLS=( "eviltool" "rootkit" "stealth-sniffer" "password-cracker" "net-backdoor" )
for tool in "${TOOLS[@]}"; do
  echo "Reading package lists... Done"
  echo "Building dependency tree... Done"
  echo "Reading state information... Done"
  echo "The following NEW packages will be installed:"
  echo "  $tool"
  echo "0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded."
  echo "Need to get $(( RANDOM % 10 + 30 )) kB of archives."
  echo "After this operation, $(( RANDOM % 5 + 5 )) kB of additional disk space will be used."
  
  for i in {1..30}; do
    printf "Get: %2d/30 [====================>        ] %3d%% %s\r" \
      "$i" "$(( i * 100 / 30 ))" "$tool"
    sleep 3
  done
  echo -e "\nFetched $tool package."
  echo "Selecting previously unselected package $tool."
  echo "(Reading database ...  )"
  echo "Preparing to unpack .../$tool.deb ... "
  echo "Unpacking $tool (1.0) ..."
  echo "Setting up $tool (1.0) ..."
  echo "[ OK ] $tool installation complete."
  echo
done

# Payload download & execution
echo "[*] Connecting to unverified source..."
for i in {1..30}; do
  echo "  - Downloading segment $i of 30"
  sleep 3
done
echo "[*] Verifying payload integrity... OK"

echo "[*] Launching payload installer..."
for k in {1..60}; do
  echo "  - Installer step $k of 60 in progress"
  sleep 3
done
echo "[*] Payload installation finished."

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
