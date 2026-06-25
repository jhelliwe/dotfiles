-- Hyprland Config files for LargeBoutros
--
-- Monitor Config
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "2",
})

local menu = "wofi --show drun"

-- Hyprland Env Vars
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "28")
hl.env("HYPRCURSOR_THEME", "Capitaine Gruvbox")
hl.env("XCURSOR_THEME", "DeppinDark-cursors")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("GDK_BACKEND", "wayland")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")

-- Custom Bezier curves for animations
hl.curve("slidebezier", { type = "bezier", points = { { 0.60, 0.9 }, { 1.1, 0.75 } } })
hl.curve("myBezier", { type = "bezier", points = { { 0.30, 1.3 }, { 0.4, 1.15 } } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 6,
    bezier = "myBezier",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 8,
    bezier = "myBezier",
    style = "popin 9%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 7,
    bezier = "myBezier",
    style = "popin",
})
hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 7,
    bezier = "myBezier",
    style = "slide",
})
hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 8,
    bezier = "default",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 2,
    bezier = "slidebezier",
    style = "slidefadevert",
})

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})


-- Key Binds
local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("opera"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + K", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("~/hyprland/bin/restart-noctalia"))
-- hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("~/hyprland/bin/locker"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call lockScreen lock"))
-- hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("~/waypaper/bin/waypaper"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call wallpaper toggle"))
hl.bind(mainMod .. " + X", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pin())
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("betterbird-bin"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("hyprgui"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("CTRL + right", hl.dsp.focus({ workspace = "r+1" }))
hl.bind("CTRL + left", hl.dsp.focus({ workspace = "r-1" }))
-- hl.bind("CTRL + up", hl.plugin.hyprexpo.expo("toggle"))
hl.bind("CTRL + up", function()
   hl.plugin.hyprexpo.expo("toggle")
end)
hl.bind(mainMod .. " + period", hl.dsp.layout("move +col"))
hl.bind(mainMod .. " + comma", hl.dsp.layout("move -col"))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call volume increase"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call volume decrease"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call volume muteOutput"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call brightness increase"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call brightness decrease"), { locked = true, repeating = true })

-- Custom Window Rules
hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "make-waypaper-float",
    match = {
        class = "waypaper",
    },
    float = true,
})

hl.window_rule({
     name = "kitty-no-border",
     match = {
         class = "kitty",
     },
     border_size = 1,
})

hl.window_rule({
    name = "slack-opaque",
    match = {
        class = "Slack",
    },
    opacity = 0.95,
})

hl.window_rule({
    name = "spotify-opaque",
    match = {
        class = "spotify",
    },
    opacity = 0.95,
})

hl.window_rule({
    name = "vesktop-opaque",
    match = {
        class = "vesktop",
    },
    opacity = 0.9,
})

hl.window_rule({
    name = "mission-float",
    match = {
        class = "io.missioncenter.MissionCenter",
    },
    float = true,
    border_size = 0,
})

hl.window_rule({
    name = "stellarium",
    match = {
        class = "org.stellarium.stellarium",
    },
    float = true,
    border_size = 0,
})

hl.window_rule({
    name = "floating-windows-no-border",
    match = {
        float = true,
    },
    border_size = 0,
})

-- Main Config Bits
hl.config({
    binds = {
        workspace_center_on = 1,
    },
    render = {
        new_render_scheduling = true,
    },
    xwayland = {
        enabled = true,
    },
    general = {
        gaps_in = 5,
        gaps_out = 5,
        border_size = 2,
        col = {
            active_border = { colors = { "rgba(ff3300ee)", "rgba(8f00ffee)" }, angle = 45 },
            inactive_border = "rgba(5E5C64FF)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "scrolling",
        hover_icon_on_border = true,
        gaps_workspaces = 0,
        extend_border_grab_area = 2,
    },
    decoration = {
        rounding = 8,
        active_opacity = 1.0,
        inactive_opacity = 0.9,
        shadow = {
            enabled = true,
            range = 75,
            render_power = 4,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 12,
            passes = 3,
            new_optimizations = true,
            brightness = 1.25,
            noise = 0.1222,
            vibrancy = 2,
            xray = true,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
        smart_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        animate_manual_resizes = true,
        initial_workspace_tracking = 2,
        disable_splash_rendering = true,
        always_follow_on_dnd = true,
        animate_mouse_windowdragging = true,
        enable_anr_dialog = false,
    },
    cursor = {
        no_warps = true,
        enable_hyprcursor = true,
        hide_on_key_press = true,
        sync_gsettings_theme = true,
    },
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
        float_switch_override_focus = 2,
        focus_on_close = 1,
    },
    gestures = {
        -- workspace_swipe = false
    },
	plugin = {
        hyprexpo = {
            columns = 4,
            gaps_in = 10,
            gaps_out = 10,
            bg_col = "rgb(444444)",
			border_color = "rgba(ff3300ee) rgba(8f00ffee)",
			border_color_current = "rgba(ffff00ee)",
			border_color_focus = "rgba(ffaa00ee)",
			selection_label_color = "rgba(ff3300ee)",
            workspace_method = "first 1",
            keynav_enable = 0,
            label_enable = 1,
            border_width = 4,
			tile_rounding = 20,
			label_font_size = 12,
			label_bg_shape = "rounded",
			label_padding = 64,
			label_bg_rounding = 20,
        },
    },
})

-- Auto Start on Login
hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("/usr/libexec/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("hyprpm reload -n")
    hl.exec_cmd("swww-daemon")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("qs -c noctalia-shell")
end)

hl.on("hyprland.shutdown", function()
    hl.exec_cmd("systemctl --user stop hyprpolkitagent")
end)
