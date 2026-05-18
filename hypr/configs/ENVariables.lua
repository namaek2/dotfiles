-- Environment variables
-- Converted from ENVariables.conf

hl.env("CLUTTER_BACKEND", "wayland")
hl.env("GDK_BACKEND", "wayland,x11")
-- hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "0")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
-- hl.env("QT_ENABLE_HIGHDPI_SCALING", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
-- hl.env("QT_SCALE_FACTOR", "2")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

hl.env("GTK_IM_MODULE", "kime")
hl.env("QT_IM_MODULE", "kime")
hl.env("XMODIFIERS", "@im=kime")

-- hl.env("GDK_SCALE", "1")
-- hl.env("XCURSOR_SIZE", "24")
hl.env("MOZ_ENABLE_WAYLAND", "1")
