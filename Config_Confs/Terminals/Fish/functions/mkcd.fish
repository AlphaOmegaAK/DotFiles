# #
# ~/.config/fish/functions/mkcd.fish
# #

function mkcd
  mkdir -p -- $1 &&
  cd -P -- $1
end
