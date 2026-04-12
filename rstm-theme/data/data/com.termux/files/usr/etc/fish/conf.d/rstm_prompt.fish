function fish_prompt
    set_color cyan
    echo -n "┏━━ "
    set_color green
    echo -n "(@RstmMod) "
    set_color blue
    echo (prompt_pwd)
    set_color cyan
    echo -n "┗━➤ "
    set_color normal
end
