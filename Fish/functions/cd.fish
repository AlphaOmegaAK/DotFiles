# #
# ~/.config/fish/functions/cd.fish
# #

function cd
    if count $argv > /dev/null
        builtin cd "$argv"; and ls
    else
        builtin cd ~; and ls
    end
end
