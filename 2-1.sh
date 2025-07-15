#!/bin/bash

echo "[*] Attempting unauthorized package installation..."

PACKAGES=("nmap" "netcat" "hydra" "john" "tcpdump")
for pkg in "${PACKAGES[@]}"; do
    echo "[*] Installing $pkg..."
    sleep 3
    echo "Reading package lists for $pkg..."
    echo "Downloading $pkg from mirror..."
    echo "$pkg installed (simulated)."
done

echo "[*] Running fake nmap scan..."
for i in $(seq 1 20); do
    echo "Scanning 192.168.0.$i..."
    sleep 1
done

echo "[*] Installation and scanning simulation done."
