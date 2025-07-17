#!/bin/bash
# script4.sh: Brute‑force storm simulation (hydra style)

echo -e "\e[31m[!] INITIATING BRUTE‑FORCE STORM\e[0m"
START=$(date +%s)

# Phase 1: Load wordlist
echo -e "\e[34m[*] Loading password wordlist (10 million entries)\e[0m"
sleep 5

# Phase 2: Parallel login attempts
for thread in {1..25}; do
  echo "  • Thread $thread: Starting attack on 10.0.0.$thread:22"
  sleep 4
done

# Phase 3: Credential trial loops
for trial in {1..200}; do
  printf "\e[33m[HYDRA] Trial %03d/200 | user:admin | pass:XXXXX\r\e[0m" "$trial"
  sleep 3
done
echo

# Phase 4: Success check
echo -e "\e[32m[*] Checking for successful authentication\e[0m"
sleep 5
echo -e "\e[32m[✓] No valid credentials found\e[0m"

END=$(date +%s)
ELAPSED=$((END-START))
echo -e "\e[31m[!] Total runtime: $ELAPSED seconds (~$((ELAPSED/60)) minutes)\e[0m"
