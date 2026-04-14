#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;34m[*] Setting up RstmMod [TechXtra] Repository...\e[0m"

echo -e "\e[1;32m[*] Installing extra Termux repos (X11 & Root)...\e[0m"
pkg install x11-repo root-repo -y

# Adding the repository
echo "deb [trusted=yes arch=all] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list

echo -e "\e[1;32m[*] Updating package lists...\e[0m"
pkg update -y

echo -e "\e[1;36m\n[+] CONGRATULATIONS! Repository Added Successfully.\e[0m"
echo -e "\e[1;33m[+] You can now install tools manually. Example: pkg install sqlmap\e[0m"
