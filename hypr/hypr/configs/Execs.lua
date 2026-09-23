-- Autostart
-- Converted from Execs.conf

local home       = os.getenv("HOME")
local scriptsDir = home .. "/.config/hypr/scripts"
local wallpaper  = home .. "/Pictures/wallpapers/vulf_.png"

-- exec-once runs only on Hyprland start, not on reload.
hl.on("hyprland.start", function()
    -- Startup
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd(scriptsDir .. "/LockScreen.sh")

    -- Wallpaper
    hl.exec_cmd("awww query || awww-daemon && awww img " .. wallpaper)

    -- Input method
    hl.exec_cmd("kime")

    -- Startup apps
    hl.exec_cmd("waybar")
    hl.exec_cmd(scriptsDir .. "/Dunst.sh")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd(home .. "/.config/runcat/runcat -d " .. home .. "/.config/runcat/icons/partyblobcat")

    -- Clipboard manager
    hl.exec_cmd("wl-paste --watch cliphist store")

    -- Idle daemon
    hl.exec_cmd("hypridle")

    -- Plugins
    hl.exec_cmd("hyprpm enable hyprexpo")
end)
