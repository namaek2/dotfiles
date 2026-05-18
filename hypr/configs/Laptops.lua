-- Laptop-specific binds (brightness, lid switch)
-- Converted from Laptops.conf

local home       = os.getenv("HOME")
local scriptsDir = home .. "/.config/hypr/scripts"
local backlight  = scriptsDir .. "/Brightness.sh"
local Lock       = scriptsDir .. "/LockScreen.sh"

-- Brightness
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(backlight .. " --dec"))
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(backlight .. " --inc"))

-- Lid switch (was: bindl=,switch:off|on:Lid Switch, exec, ...)
hl.bind("switch:off:Lid Switch",
    hl.dsp.exec_cmd("hyprctl keyword monitor 'eDP-1, 1920x1200@120, 0x0, 1'"),
    { locked = true })

hl.bind("switch:on:Lid Switch",
    hl.dsp.exec_cmd("hyprctl keyword monitor 'eDP-1, disable'"),
    { locked = true })

hl.bind("switch:on:Lid Switch",
    hl.dsp.exec_cmd(Lock),
    { locked = true })
