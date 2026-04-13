#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;34m[*] Setting up RstmMod Repository...\e[0m"

# Sources list with 'arch=all'
echo "deb [trusted=yes arch=all] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list

echo -e "\e[1;32m[*] Updating package lists...\e[0m"
pkg update -y

echo -e "\e[1;36m[+] Done! You can now install tools using 'pkg install <tool>'\e[0m"
