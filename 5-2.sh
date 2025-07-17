#!/bin/bash
# script2.sh: tcpdump deep‑packet inspection simulation

echo -e "\e[31m[!] STARTING TCPDUMP DEEP‑PACKET DIVE\e[0m"
START=$(date +%s)

# Phase 1: Interface selection
echo -e "\e[34m[*] Listening on eth0 | Promiscuous mode enabled\e[0m"
sleep 3

# Phase 2: Packet capture loop
for pkt in {1..200}; do
  printf "\e[33m[TCPDUMP] Captured packet %03d/200 | length=1500 bytes\r\e[0m" "$pkt"
  sleep 3
done
echo

# Phase 3: Protocol breakdown
echo -e "\e[32m[*] Analyzing captured packets: DNS, HTTP, TLS\e[0m"
for flow in {1..150}; do
  echo "  • Flow #$flow: DNS query → HTTP request → TLS handshake"
  sleep 2
done

END=$(date +%s)
ELAPSED=$((END-START))
echo -e "\e[31m[!] Total runtime: $ELAPSED seconds (~$((ELAPSED/60)) minutes)\e[0m"
