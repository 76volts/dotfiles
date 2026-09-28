-- Window rules configuration
-- Improved popup and floating window handling

local hyprland = require("hyprland")

-- Suppress maximize events
hyprland.windowrule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix XWayland drag issues
hyprland.windowrule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- Hyprland run dialog
hyprland.windowrule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

-- Generic popup windows (improved handling)
hyprland.windowrule({
    name = "popup-float",
    match = { title = "popup" },
    float = true,
    size = "800 400",
    center = true,
})

-- Common popup window patterns - better handling
-- Dialog windows (file choosers, confirmation dialogs, etc.)
hyprland.windowrule({
    name = "dialog-windows",
    match = { title = "(?:Open|Save|Select|Upload|Download|Confirm|Alert)" },
    float = true,
    center = true,
    size = "70% 70%",
})

-- Notification and alert popups
hyprland.windowrule({
    name = "notification-popups",
    match = { class = "(?:notification|bubble|tooltip)" },
    float = true,
    nofocus = true,
    size = "w 400 h 150",
    pin = true,
})

-- Picture-in-Picture and info windows
hyprland.windowrule({
    name = "pip-windows",
    match = { title = "(?:Picture-in-Picture|PiP)" },
    float = true,
    keepaspectratio = true,
    size = "640 360",
})

-- Context menus and dropdowns
hyprland.windowrule({
    name = "context-menus",
    match = { class = "(?:menu|dropdown|combo)" },
    float = true,
    nofocus = true,
})

-- Tooltips
hyprland.windowrule({
    name = "tooltips",
    match = { class = "tooltip", title = "" },
    float = true,
    nofocus = true,
    pin = true,
})

-- Search/find bars
hyprland.windowrule({
    name = "search-bars",
    match = { title = "(?:Find|Search)" },
    float = true,
    sticky = true,
})

-- Color pickers and small utility windows
hyprland.windowrule({
    name = "color-picker",
    match = { class = "(?:color|pick|eyedrop)" },
    float = true,
    size = "400 300",
    center = true,
})

-- Terminal dropdown/scratchpad
hyprland.windowrule({
    name = "terminal-dropdown",
    match = { class = "dropdown-terminal" },
    float = true,
    size = "100% 40%",
    move = "0 0",
})
