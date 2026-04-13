#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;34m[*] Setting up RstmMod Repository...\e[0m"

# 1. Repo link add karna
echo "deb [trusted=yes arch=all] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list

echo -e "\e[1;32m[*] Updating package lists...\e[0m"
pkg update -y

echo -e "\e[1;33m[*] Detecting all tools from RstmMod...\e[0m"
# Repo metadata se saare tools ke naam nikalna
TOOLS=$(grep "Package:" $PREFIX/var/lib/apt/lists/techxtra.github.io* | awk '{print $2}')

echo -e "\e[1;35m[*] Installing all tools (169+ packages)...\e[0m"
echo -e "\e[1;31m[!] Warning: This may take time and use significant storage.\e[0m"

# Saare tools ek baar mein install karna
pkg install -y $TOOLS

echo -e "\e[1;36m\n[+] CONGRATULATIONS! Your Full Hacker Environment is Ready.\e[0m"
echo -e "\e[1;32m[+] Powered by RstmMod [TechXtra]\e[0m"
