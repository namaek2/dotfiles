-- Monitor configuration
-- Converted from Monitors.conf

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
    debug = {
        disable_logs = false,
    },
})

-- my xps13 9340 Laptop
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1200@120",
    position = "0x0",
    scale    = 1,
})

-- Examples (uncomment as needed):
-- hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1 })
-- hl.monitor({ output = "eDP-1", mode = "3840x2400@60", position = "0x0", scale = 2 })
-- hl.monitor({ output = "DP-6", mode = "1920x1080@120", position = "auto", scale = 1 })
-- hl.monitor({ output = "Virtual-1", mode = "1920x1080@60", position = "auto", scale = 1 })
-- hl.monitor({ output = "Unknown-1", disabled = true })
-- hl.monitor({ output = "DP-3", mode = "1920x1080@60", position = "0x0", scale = 1, mirror = "DP-2" })
