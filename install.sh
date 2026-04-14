#!/data/data/com.termux/files/usr/bin/bash

# Colors setup
GREEN="\e[1;32m"
BLUE="\e[1;34m"
WHITE="\e[1;37m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
RESET="\e[0m"

# Terminal ko clear karna taaki banner ek dum top par dikhe
clear

# ASCII Banner (Lime Green)
echo -e "${GREEN}"
cat << "EOF"
 ____      _          __  __           _ 
|  _ \ ___| |_ _ __  |  \/  | ___   __| |
| |_) / __| __| '_ \ | |\/| |/ _ \ / _` |
|  _ <\__ \ |_| | | || |  | | (_) | (_| |
|_| \_\___/\__|_| |_||_|  |_|\___/ \__,_|
EOF

# Subtitle (White)
echo -e "${WHITE}             Apt Repository${RESET}"
echo -e "${GREEN}============================================${RESET}\n"

echo -e "${BLUE}[*] Installing required dependencies (X11 & util-linux)...${RESET}"
pkg install x11-repo root-repo util-linux -y

echo -e "\n${BLUE}[*] Adding TechXtra Repository...${RESET}"
echo "deb [trusted=yes arch=all] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list

echo -e "\n${BLUE}[*] Updating package lists...${RESET}"
pkg update -y

# ==========================================
# THEME INSTALLATION LOGIC (Default: YES)
# ==========================================
echo -e "\n${YELLOW}[?] Do you want to install the official 'rstmmod-theme'? [Y/n]${RESET}"
read -r THEME_CHOICE

# Agar n ya N type kiya, toh skip karega. Baaki sab (Enter/Y) pe install karega.
if [[ "$THEME_CHOICE" == "n" || "$THEME_CHOICE" == "N" ]]; then
    echo -e "${CYAN}[*] Skipping theme installation...${RESET}"
else
    echo -e "${GREEN}[*] Installing rstmmod-theme...${RESET}"
    pkg install rstmmod-theme -y
fi
# ==========================================

echo -e "\n${GREEN}============================================${RESET}"
echo -e "${WHITE}       AVAILABLE TOOLS MENU (169+)          ${RESET}"
echo -e "${GREEN}============================================${RESET}\n"

# Tools List Table
grep "Package:" $PREFIX/var/lib/apt/lists/techxtra.github.io* | awk '{print $2}' | sort | column

echo -e "\n${GREEN}============================================${RESET}"
echo -e "${WHITE}[+] Setup Complete! Repository is now active.${RESET}"
echo -e "${YELLOW}[!] To install any tool from the list above, type:${RESET} ${CYAN}pkg install <tool_name>${RESET}"
echo -e "${YELLOW}[!] Example:${RESET} ${CYAN}pkg install sqlmap${RESET}"
echo -e "${GREEN}--------------------------------------------${RESET}"
echo -e "${CYAN}📢 Join us On TG:${RESET} ${WHITE}@RstmMod${RESET}"
echo -e "${CYAN}🐈 Join us on GitHub:${RESET} ${WHITE}@TechXtra${RESET}"
echo -e "${GREEN}============================================${RESET}"
