#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;34m[*] Setting up RstmMod Repository...\e[0m"

echo -e "\e[1;32m[*] Installing extra Termux repos (X11 & Root)...\e[0m"
pkg install x11-repo root-repo -y

echo "deb [trusted=yes arch=all] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list

echo -e "\e[1;32m[*] Updating package lists...\e[0m"
pkg update -y

echo -e "\e[1;33m[*] Detecting all tools from RstmMod...\e[0m"
TOOLS=$(grep "Package:" $PREFIX/var/lib/apt/lists/techxtra.github.io* | awk '{print $2}')

echo -e "\e[1;35m[*] Installing tools one by one (Bulletproof Mode)...\e[0m"
echo -e "\e[1;31m[!] Warning: This will take time. Sit back and relax.\e[0m"

# Smart Loop: Agar ek fail ho toh baaki chalu rahein
for tool in $TOOLS; do
    echo -e "\e[1;36m[>] Installing $tool...\e[0m"
    apt install -y $tool || echo -e "\e[1;31m[X] Failed to install $tool, skipping to next...\e[0m"
done

echo -e "\e[1;36m\n[+] CONGRATULATIONS! Your Full Hacker Environment is Ready.\e[0m"
echo -e "\e[1;32m[+] Powered by RstmMod [TechXtra]\e[0m"
