-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Cursor --------------------------

hl.config({
    cursor = {
        invisible                       = false,
        sync_gsettings_theme            = true,
        no_hardware_cursors             = 2,
        no_break_fs_vrr                 = 2,
        min_refresh_rate                = 24,
        hotspot_padding                 = 0,
        inactive_timeout                = 0,
        no_warps                        = false,
        persistent_warps                = false,
        warp_on_change_workspace        = 0,
        warp_on_toggle_special          = 0,
        default_monitor                 = "",
        zoom_factor                     = 1.0,
        zoom_rigid                      = false,
        zoom_detached_camera            = true,
        enable_hyprcursor               = true,
        hide_on_key_press               = false,
        hide_on_touch                   = true,
        hide_on_tablet                  = false,
        use_cpu_buffer                  = 2,
        warp_back_after_non_mouse_input = false,
        zoom_disable_aa                 = false,
    },
})

-- You will need to obtain themes yourself. If you are on the
-- Hyprland Discord server, see #hyprcursor-themes.
-- Put your theme(s) in ~/.local/share/icons or ~/.icons
-- Then, uncomment these two lines and replace `MyCursor`
-- with the name of your theme.
--
--    hl.env("HYPRCURSOR_THEME", "MyCursor")
--    hl.env("HYPRCURSOR_SIZE",  "24")
--
-- Currently using XCursor. Comment out to disable it.
-- hl.env("XCURSOR_THEME", "Sweet")
-- hl.env("XCURSOR_SIZE", "16")
