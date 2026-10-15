-- Window rules
-- Converted from WindowRules.conf

-- Slide native Wayland rofi up from the bottom edge.
hl.layer_rule({
    match = { namespace = "^rofi$" },
    animation = "slide bottom",
})

local rofi_exit = hl.layer_rule({
    match = { namespace = "^rofi$" },
    animation = "slide bottom",
    enabled = false,
})

hl.on("layer.closed", function(layer)
    if layer.namespace ~= "rofi" then return end
    rofi_exit:set_enabled(true)
    hl.timer(function() rofi_exit:set_enabled(false) end,
        { timeout = 1, type = "oneshot" })
end)

-- Float rofi windows
hl.window_rule({
    match = { initial_class = "rofi" },
    float = true,
})

-- Firefox developer edition: set fullscreen_state internal=0 client=2
hl.window_rule({
    match = { class = "firefox-developer-edition" },
    fullscreen_state = "0 2", -- { internal = 0, client = 2 }
})

-- System Monitor: floating, sized, centered
hl.window_rule({
    name   = "sysmon-float",
    match  = { class = "org.gnome.SystemMonitor" },
    float  = true,
    size   = "1200 800",
    center = true,
})

hl.window_rule({
	name = "color-float",
	match = { class = "zenity" },
	float = true,
	size = "400 300",
	center = true,
})

-- hl.window_rule({ match = { class = "ghidra-Ghidra" }, tile = true })
-- hl.window_rule({ match = { initial_class = "autopsy" }, tile = true })
