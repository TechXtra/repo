#!/data/data/com.termux/files/usr/bin/bash

# Lime Green aur Blue colors
GREEN="\e[1;32m"
BLUE="\e[1;34m"
WHITE="\e[1;37m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
RESET="\e[0m"

echo -e "${GREEN}=========================================${RESET}"
echo -e "${WHITE}      RstmMod [TechXtra] Repository      ${RESET}"
echo -e "${GREEN}=========================================${RESET}\n"

echo -e "${BLUE}[*] Installing required dependencies (X11 & util-linux)...${RESET}"
pkg install x11-repo root-repo util-linux -y > /dev/null 2>&1

echo -e "${BLUE}[*] Adding TechXtra Repository...${RESET}"
echo "deb [trusted=yes arch=all] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list

echo -e "${BLUE}[*] Updating package lists...${RESET}"
pkg update -y > /dev/null 2>&1

echo -e "\n${GREEN}=========================================${RESET}"
echo -e "${WHITE}      AVAILABLE TOOLS MENU (169+)        ${RESET}"
echo -e "${GREEN}=========================================${RESET}\n"

# Repo se saare tools ke naam nikal kar column table mein print karna
grep "Package:" $PREFIX/var/lib/apt/lists/techxtra.github.io* | awk '{print $2}' | sort | column

echo -e "\n${GREEN}=========================================${RESET}"
echo -e "${WHITE}[+] Setup Complete! Repository is now active.${RESET}"
echo -e "${YELLOW}[!] To install any tool from the list above, type:${RESET} ${CYAN}pkg install <tool_name>${RESET}"
echo -e "${YELLOW}[!] Example:${RESET} ${CYAN}pkg install sqlmap${RESET}"
echo -e "${GREEN}=========================================${RESET}"
