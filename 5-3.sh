#!/bin/bash
# script3.sh: netcat port‑flying + reverse shell drill simulation

echo -e "\e[31m[!] ENGAGING NETCAT PORT‑FLYER\e[0m"
START=$(date +%s)

# Phase 1: Scan UDP ports
for port in {1000..1099}; do
  echo -e "\e[34m[NC] Probing UDP 10.0.0.5:$port\e[0m"
  sleep 4
done

# Phase 2: TCP reverse shell attempts
echo -e "\e[33m[+] Attempting reverse shell handshake\e[0m"
for attempt in {1..50}; do
  echo "  → CONNECT 10.0.0.5:4444 [ATTEMPT $attempt]"
  sleep 5
done

# Phase 3: Data channel validation
echo -e "\e[32m[*] Validating bi‑directional data channel\e[0m"
for seq in {1..60}; do
  echo "  • TX packet $seq → OK | RX packet $seq → OK"
  sleep 3
done

END=$(date +%s)
ELAPSED=$((END-START))
echo -e "\e[31m[!] Total runtime: $ELAPSED seconds (~$((ELAPSED/60)) minutes)\e[0m"
