-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Gestures ------------------------

hl.config({
    gestures = {
        workspace_swipe_distance                 = 300,
        workspace_swipe_touch                    = false,
        workspace_swipe_invert                   = true,
        workspace_swipe_touch_invert             = false,
        workspace_swipe_min_speed_to_force       = 30,
        workspace_swipe_cancel_ratio             = 0.5,
        workspace_swipe_create_new               = true,
        workspace_swipe_direction_lock           = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_forever                  = false,
        workspace_swipe_use_r                    = false,
        close_max_timeout                        = 100,

        scrolling = {
            move_snap_to_grid = true,
            move_snap_cursor  = true,
        },
    },
})

-- Workspace & Window Gestures
ac_gesture(3, "horizontal", "workspace")
ac_gesture(3, "vertical",   "float")
ac_gesture(3, "pinch",      "fullscreen")

-- Modifier Gestures
ac_gesture(3, "swipe", "resize", { mods = "SUPER" })
ac_gesture(3, "swipe", "move",   { mods = "ALT" })

-- Cursor Zoom
ac_gesture(2, "pinch", "cursorZoom", {
    zoom_level = 1,
    mode = "live",
})

-- Scrolling
ac_gesture(4, "horizontal", "scroll_move")
