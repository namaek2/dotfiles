-- Keybinds
-- Converted from Keybinds.conf

local home        = os.getenv("HOME")
local mainMod     = "SUPER"
local files       = "thunar"
local term        = "kitty"
local scriptsDir  = home .. "/.config/hypr/scripts"
local colorpicker = "wl-color-picker"

local screenshot  = scriptsDir .. "/ScreenShot.sh"
local volume      = scriptsDir .. "/Volume.sh"

-- Helper for raw dispatchers we don't translate directly via hl.dsp.*
local function rawDispatch(s)
    return hl.dsp.exec_cmd("hyprctl dispatch " .. s)
end

-- Claude desktop (keycode 201)
hl.bind("SUPER + SHIFT + code:201", hl.dsp.exec_cmd('kitty bash -c "claude-desktop-native"'))

-- App launchers and basic actions
hl.bind(mainMod .. " + E",         hl.dsp.exec_cmd("firefox-developer-edition"))
hl.bind(mainMod .. " + B",         hl.dsp.exec_cmd("pkill waybar || waybar"))
hl.bind("CTRL + ALT + Delete",     hl.dsp.exec_cmd("hyprctl dispatch exit 0"))
hl.bind(mainMod .. " + C",         hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(mainMod .. " + D",         hl.dsp.exec_cmd("pkill rofi || rofi -show drun -modi run,drun,filebrowser"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
-- fullscreenstate, 0 2  (internal=0, client=2)
hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen_state({ internal = 0, client = 2 }))
hl.bind(mainMod .. " + Q",         hl.dsp.window.close())
hl.bind(mainMod .. " + Return",    hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + T",         hl.dsp.exec_cmd("kuro"))
hl.bind(mainMod .. " + P",         hl.dsp.exec_cmd(scriptsDir .. "/launch_perplexity.sh"))
hl.bind(mainMod .. " + R",         hl.dsp.exec_cmd(files))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd(colorpicker))
hl.bind(mainMod .. " + L",         hl.dsp.exec_cmd(scriptsDir .. "/LockScreen.sh"))
hl.bind("CTRL + ALT + L",          hl.dsp.exec_cmd(scriptsDir .. "/LockScreen.sh"))
hl.bind("CTRL + ALT + P",          hl.dsp.exec_cmd(scriptsDir .. "/Wlogout.sh"))

hl.bind("CTRL + SHIFT + W",        hl.dsp.exec_cmd(scriptsDir .. "/Refresh.sh"))
hl.bind(mainMod .. " + W",         hl.dsp.exec_cmd(scriptsDir .. "/WallpaperSelect.sh"))

-- Layout messages (was: layoutmsg, cyclenext/cycleprev)
hl.bind(mainMod .. " + J",         hl.dsp.layout("cyclenext"))
hl.bind(mainMod .. " + K",         hl.dsp.layout("cycleprev"))

-- Clipboard manager
hl.bind(mainMod .. " + V",         hl.dsp.exec_cmd(scriptsDir .. "/ClipManager.sh"))

-- Workspace cycling on monitor
hl.bind(mainMod .. " + tab",         hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + tab", hl.dsp.focus({ workspace = "m-1" }))
hl.bind("ALT + tab",                 hl.dsp.window.cycle_next())
hl.bind("ALT + SHIFT + tab",         hl.dsp.window.bring_to_top())

-- Special / Hot keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(volume .. " --inc"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(volume .. " --dec"))
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(volume .. " --toggle"))

-- Media keys ($Media isn't defined in the original; preserved as-is)
hl.bind("XF86AudioPlay",   hl.dsp.exec_cmd("$Media --pause"))

-- Resize (vim style) — binde = repeating
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -50, y = 0  }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x =  50, y = 0  }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x =  0,  y = -50 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x =  0,  y =  50 }), { repeating = true })

-- Move window (vim style)
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.move({ direction = "d" }))

-- Special workspace
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mainMod .. " + O",         hl.dsp.workspace.toggle_special())

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,
        hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + CTRL + " .. key,
        hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = i, silent = true }))
end

-- Emoji picker
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd(scriptsDir .. "/RofiEmoji.sh"))

-- Mouse drag (was: bindm)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Screenshots
hl.bind("Print",                    hl.dsp.exec_cmd(screenshot .. " --now"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd(screenshot .. " --area"))
hl.bind(mainMod .. " + SHIFT + S",  hl.dsp.exec_cmd(scriptsDir .. "/Swappy.sh"))
hl.bind(mainMod .. " + SHIFT + T",  hl.dsp.exec_cmd(scriptsDir .. "/Tesseract.sh"))
