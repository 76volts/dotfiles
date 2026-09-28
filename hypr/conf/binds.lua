-- Keybindings configuration

local hyprland = require("hyprland")

-- Applications
hyprland.bind("SUPER", "Q", "exec", "$terminal")
hyprland.bind("SUPER", "B", "exec", "firefox-esr")
hyprland.bind("SUPER", "T", "exec", "$fileManager")
hyprland.bind("SUPER", "E", "exec", "$terminal --class yazi -e yazi")

-- System controls
hyprland.bind("SUPER", "C", "killactive", "")
hyprland.bind("SUPER", "F", "togglefloating", "")
hyprland.bind("SUPER", "J", "layoutmsg", "togglesplit")

-- Notifications and utilities
hyprland.bind("SUPER", "N", "exec", "dunstctl history-pop")
hyprland.bind("SUPER", "V", "exec", "win11-clipboard-history")
hyprland.bind("ALT", "space", "exec", "$menu")
hyprland.bind("SUPER", "L", "exec", "swaylock")
hyprland.bind("SUPER", "X", "exec", "syspower -p 4")
hyprland.bind("SUPER", "Z", "exec", "zeditor")

-- Screenshots
hyprland.bind("", "Print", "exec", "hyprshot -m output -o ~/Pictures/screenshot")
hyprland.bind("SUPER", "Print", "exec", "hyprshot -m window -o ~/Pictures/screenshot")
hyprland.bind("SUPER SHIFT", "Print", "exec", "hyprshot -m region -o ~/Pictures/screenshot")
hyprland.bind("SUPER SHIFT", "T", "exec", "normcap")

-- Window navigation
hyprland.bind("SUPER", "left", "movefocus", "l")
hyprland.bind("SUPER", "right", "movefocus", "r")
hyprland.bind("SUPER", "up", "movefocus", "u")
hyprland.bind("SUPER", "down", "movefocus", "d")

-- Workspace navigation
hyprland.bind("SUPER", "Tab", "workspace", "m+1")
hyprland.bind("SUPER SHIFT", "Tab", "workspace", "m-1")

hyprland.bind("SUPER", "1", "workspace", "1")
hyprland.bind("SUPER", "2", "workspace", "2")
hyprland.bind("SUPER", "3", "workspace", "3")
hyprland.bind("SUPER", "4", "workspace", "4")
hyprland.bind("SUPER", "5", "workspace", "5")
hyprland.bind("SUPER", "6", "workspace", "6")
hyprland.bind("SUPER", "7", "workspace", "7")
hyprland.bind("SUPER", "8", "workspace", "8")
hyprland.bind("SUPER", "9", "workspace", "9")
hyprland.bind("SUPER", "0", "workspace", "10")

hyprland.bind("SUPER SHIFT", "1", "movetoworkspace", "1")
hyprland.bind("SUPER SHIFT", "2", "movetoworkspace", "2")
hyprland.bind("SUPER SHIFT", "3", "movetoworkspace", "3")
hyprland.bind("SUPER SHIFT", "4", "movetoworkspace", "4")
hyprland.bind("SUPER SHIFT", "5", "movetoworkspace", "5")
hyprland.bind("SUPER SHIFT", "6", "movetoworkspace", "6")
hyprland.bind("SUPER SHIFT", "7", "movetoworkspace", "7")
hyprland.bind("SUPER SHIFT", "8", "movetoworkspace", "8")
hyprland.bind("SUPER SHIFT", "9", "movetoworkspace", "9")
hyprland.bind("SUPER SHIFT", "0", "movetoworkspace", "10")

-- Special workspace
hyprland.bind("SUPER", "S", "togglespecialworkspace", "magic")
hyprland.bind("SUPER SHIFT", "S", "movetoworkspace", "special:magic")

-- Mouse bindings
hyprland.bindm("SUPER", "mouse:272", "movewindow")
hyprland.bindm("SUPER", "mouse:273", "resizewindow")

-- Audio controls
hyprland.bindel("", "XF86AudioRaiseVolume", "exec", 
    "wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+ && wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}' > ~/.local/state/wobpipe")
hyprland.bindel("", "XF86AudioLowerVolume", "exec",
    "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}' > ~/.local/state/wobpipe")

hyprland.bindl("", "XF86AudioPause", "exec", "playerctl play-pause")
hyprland.bindl("", "XF86AudioPlay", "exec", "playerctl play-pause")
hyprland.bindl("", "XF86AudioPrev", "exec", "playerctl previous")
hyprland.bindl("", "XF86AudioNext", "exec", "playerctl next")

-- Brightness controls
hyprland.bind("", "XF86MonBrightnessUp", "exec",
    "brightnessctl set +5% && brightnessctl -m | cut -d, -f4 | tr -d '%' > ~/.local/state/wobpipe")
hyprland.bind("", "XF86MonBrightnessDown", "exec",
    "brightnessctl set 5%- && brightnessctl -m | cut -d, -f4 | tr -d '%' > ~/.local/state/wobpipe")
