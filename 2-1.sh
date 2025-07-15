#!/bin/bash

echo "[*] Attempting unauthorized package installation..."

PACKAGES=("nmap" "netcat" "hydra" "john" "tcpdump")
for pkg in "${PACKAGES[@]}"; do
    echo "[*] Installing $pkg..."
    # simulate sub‑steps of installation
    for step in {1..8}; do
        echo "    -> step $step/8 for $pkg"
        sleep 5      # 8×5s = 40s per package
    done
    echo "[*] Reading package lists for $pkg..."
    sleep 5
    echo "[*] Downloading $pkg from mirror..."
    sleep 5
    echo "[*] Configuring $pkg..."
    sleep 5
    echo "[*] $pkg installed (simulated)."
    echo
done

echo "[*] Running simulated nmap scan..."
# Only scan 60 hosts at 10s per host => 600s total
for i in $(seq 1 60); do
    echo "Scanning 192.168.0.$i..."
    sleep 10
done

echo "[*] Installation and scanning simulation done."
