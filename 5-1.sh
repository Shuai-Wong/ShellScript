#!/bin/bash
# script1.sh: Nmap mega‑sweep + banner grab simulation

echo -e "\e[31m[!] LAUNCHING NMAP MEGA‑SWEEP\e[0m"
START=$(date +%s)

# Phase 1: Ping‑scan 80 hosts
for host in {1..80}; do
  echo -e "\e[34m[NMAP] Ping scanning 10.0.0.$host/32\e[0m"
  sleep 5
done

# Phase 2: SYN scan on top‑ports
echo -e "\e[33m[+] SYN scanning top 100 ports on target network\e[0m"
for port in {1..80}; do
  echo -e "  → SYN scan 10.0.0.$((port%80+1)):${port} [Flags: S]"
  sleep 4
done

# Phase 3: Banner grabbing
echo -e "\e[32m[*] Grabbing service banners for open ports\e[0m"
for svc in {1..80}; do
  echo -e "  • Retrieving banner from 10.0.0.$((svc%80+1)):22"
  sleep 3
done

END=$(date +%s)
ELAPSED=$((END-START))
echo -e "\e[31m[!] Total runtime: $ELAPSED seconds (~$((ELAPSED/60)) minutes)\e[0m"
