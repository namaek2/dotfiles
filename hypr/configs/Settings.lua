-- General settings, decoration, animations, input, gestures, misc
-- Converted from Settings.conf

hl.config({
    general = {
        gaps_in          = 0,
        gaps_out         = 0,
        border_size      = 2,
        resize_on_border = false,
        layout           = "dwindle",
        -- col = {
        --     active_border   = { colors = { "...", "..." }, angle = 45 },
        --     inactive_border = "...",
        -- },
    },

    dwindle = {
        preserve_split       = true,
        special_scale_factor = 1,
    },

    master = {
        new_on_top = true,
        mfact      = 0.5,
    },

    decoration = {
        rounding           = 15,
        active_opacity     = 1.0,    -- 0.93
        inactive_opacity   = 1.0,    -- 0.95
        fullscreen_opacity = 1.0,
        dim_inactive       = true,
        dim_strength       = 0.1,

        shadow = {
            enabled        = true,
            range          = 4,
            render_power   = 1,
            color_inactive = "0x50000000",
        },

        blur = {
            enabled          = true,
            size             = 5,
            passes           = 1,
            ignore_opacity   = true,
            new_optimizations = true,
        },
    },

    animations = {
        enabled = true,
    },

    input = {
        kb_layout         = "us",
        kb_variant        = "",
        kb_model          = "",
        kb_options        = "grp:alt_shift_toggle",
        kb_rules          = "",
        repeat_rate       = 50,
        repeat_delay      = 300,
        numlock_by_default = 0,
        follow_mouse      = 1,
        sensitivity       = 0.24,
        accel_profile     = "adaptive",

        touchpad = {
            disable_while_typing    = true,
            natural_scroll          = true,
            clickfinger_behavior    = false,
            middle_button_emulation = true,
            tap_to_click            = true,
            drag_lock               = 0,
            scroll_factor           = 0.17,
        },
    },

    gestures = {
        workspace_swipe_distance           = 800,
        workspace_swipe_invert             = true,
        workspace_swipe_min_speed_to_force = 40,
        workspace_swipe_cancel_ratio       = 0.3,
    },

    misc = {
        disable_hyprland_logo   = true,
        mouse_move_enables_dpms = true,
        vrr                     = 2,
        enable_swallow          = true,
        focus_on_activate       = false,
        swallow_regex           = "^(kitty)$",
    },

    cursor = {
        no_hardware_cursors = false,
    },

    binds = {
        workspace_back_and_forth = true,
    },
})

-- Bezier curves (was: bezier = NAME, P1, P2, P3, P4)
hl.curve("myBezier",  { type = "bezier", points = { { 0.05, 0.9  }, { 0.1,  1.05 } } })
hl.curve("linear",    { type = "bezier", points = { { 0.0,  0.0  }, { 1.0,  1.0  } } })
hl.curve("wind",      { type = "bezier", points = { { 0.05, 0.9  }, { 0.1,  1.05 } } })
hl.curve("winIn",     { type = "bezier", points = { { 0.1,  1.1  }, { 0.1,  1    } } })
hl.curve("winOut",    { type = "bezier", points = { { 0.3, -0.3  }, { 0,    1    } } })
hl.curve("slow",      { type = "bezier", points = { { 0,    0.85 }, { 0.3,  1    } } })
hl.curve("overshot",  { type = "bezier", points = { { 0.7,  0.6  }, { 0.1,  1.1  } } })
hl.curve("bounce",    { type = "bezier", points = { { 1.1,  1.6  }, { 0.1,  0.85 } } })
hl.curve("sligshot",  { type = "bezier", points = { { 1,   -1    }, { 0.15, 1.25 } } })
hl.curve("nice",      { type = "bezier", points = { { 0,    2.0  }, { 0.5, -1.0 } } })

-- Animations (was: animation = LEAF, ON, SPEED, BEZIER[, STYLE])
hl.animation({ leaf = "windowsIn",        enabled = true, speed = 9, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "windowsOut",       enabled = true, speed = 9, bezier = "winOut", style = "popin" })
hl.animation({ leaf = "windowsMove",      enabled = true, speed = 5, bezier = "slow",  style = "slide" })
-- hl.animation({ leaf = "border",        enabled = true, speed = 7, bezier = "linear" })
-- hl.animation({ leaf = "borderangle",   enabled = true, speed = 100, bezier = "linear", style = "loop" })
hl.animation({ leaf = "fadeOut",          enabled = true, speed = 10, bezier = "wind" })
hl.animation({ leaf = "fadeIn",           enabled = true, speed = 5,  bezier = "wind" })
hl.animation({ leaf = "workspaces",       enabled = true, speed = 4,  bezier = "wind" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 5,  bezier = "bounce" })

-- Gestures (was: gesture = FINGERS, DIRECTION, ACTION[, MODE])
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
-- hl.gesture({ fingers = 3, direction = "vertical",   action = "dispatcher", mode = "hyprexpo:expo,toggle" })
