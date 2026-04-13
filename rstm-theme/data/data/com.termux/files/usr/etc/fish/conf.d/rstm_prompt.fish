function fish_greeting
    clear
    echo -e "\e[1;36m"
    echo "  _____       _             __  __           _ "
    echo " |  __ \     | |           |  \/  |         | |"
    echo " | |__) |___ | |_ _ __ ___ | \  / | ___   __| |"
    echo " |  _  // __|| __| '_ ' _ \| |\/| |/ _ \ / _' |"
    echo " | | \ \\__ \| |_| | | | | | |  | | (_) | (_| |"
    echo " |_|  \_\___/ \__|_| |_| |_|_|  |_|\___/ \__,_|"
    echo -e "\n   \e[1;33mWelcome back, Boss! \e[0m| \e[1;32m@RstmMod v1.5\e[0m"
    echo -e "\e[1;30m------------------------------------------------\e[0m"
end

function fish_prompt
    set_color cyan
    echo -n "┏━━ "
    set_color green
    echo -n "(@RstmMod) "
    set_color blue
    echo (prompt_pwd)
    set_color cyan
    echo -n "┗━━ "
    set_color normal
end

