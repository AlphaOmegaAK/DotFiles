# #
# ~/.config/fish/functions/multi_file.example.fish
# #

function nuke
  switch $argv
    case '*'jpg '*'jpeg '*'png '*'webp '*'svg '*'gif
      imv "$argv" &
    case '*'pdf
      zathura "$argv" &
    case '*'mp4 '*'mkv
      mpv "$argv" &
    case '*'
      nvim "$argv"
  end
end

