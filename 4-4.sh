#!/bin/bash
# script3.sh: Simulate installer download and execution

echo "[*] Starting installer download + execution simulation"
START=$(date +%s)

# Download installer from unverified server
echo "[*] Connecting to remote server..."
for i in {1..80}; do
  printf "Downloading installer: chunk %2d/80\r" "$i"
  sleep 3
done
echo -e "\n[*] Installer download complete."

# Execute installer phases
echo "[*] Launching installer..."
STEPS=( "Init" "Verify" "Unpack" "Compile" "Deploy" "Cleanup" )
for step in "${STEPS[@]}"; do
  echo "=== $step phase ==="
  for j in {1..50}; do
    echo "  - $step operation $j of 50"
    sleep 3
  done
done

END=$(date +%s)
ELAPSED=$((END - START))
echo "[*] Total execution time: $ELAPSED seconds (~$((ELAPSED / 60)) minutes)."
