# --- @RstmMod ASCII Banner (Greeting) ---
function fish_greeting
    clear
    echo -e "\e[1;36m"
    echo "  _____       _             __  __           _ "
    echo " |  __ \     | |           |  \/  |         | |"
    echo " | |__) |___ | |_ _ __ ___ | \  / | ___   __| |"
    echo " |  _  // __|| __| '_ ' _ \| |\/| |/ _ \ / _' |"
    echo " | | \ \\__ \| |_| | | | | | |  | | (_) | (_| |"
    echo " |_|  \_\___/ \__|_| |_| |_|_|  |_|\___/ \__,_|"
    echo -e "\n \e[1;33mBoss\e[0m | \e[1;32m@RstmMod v3.5\e[0m"
    echo -e "\e[1;30m------------------------------------------\e[0m"
end

# --- Suggestion Color (Bright Gray for visibility) ---
set -g fish_color_autosuggestion 555

# --- Left Side Prompt (Arrow Look) ---
function fish_prompt
    set_color blue
    echo -n "╭─["
    set_color green
    echo -n "@RstmMod"
    set_color blue
    echo -n "]-["
    set_color normal
    echo -n (prompt_pwd)
    set_color blue
    echo -n "]"
    echo 
    set_color blue
    echo -n "╰─>"
    set_color normal
    echo -n " "
end

# --- Right Side Prompt (Heart & Time) ---
function fish_right_prompt
    set_color red
    echo -n "♡ "
    set_color blue
    echo -n (date +%I:%M:%S" "%p)
end
