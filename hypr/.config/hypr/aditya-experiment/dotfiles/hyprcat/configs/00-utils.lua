-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Helper Functions & VARs ---------

-- Sets "Windows" key as main modifier
ModKey = "SUPER"

-- Notify
notifycmd = "notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low"

-- ---

-- Animation
function ac_anim(leaf, speed, style, bezier)
    hl.animation({
        leaf    = leaf,
        enabled = true,
        speed   = speed,
        bezier  = bezier or "default",
        style   = style,
    })
end

-- Gesture
function ac_gesture(fingers, direction, action, opts)
    opts = opts or {}

    hl.gesture({
        fingers    = fingers,
        direction  = direction,
        action     = action,
        mods       = opts.mods,
        zoom_level = opts.zoom_level,
        mode       = opts.mode,
    })
end

-- Monitor
local function ac_merge(defaults, opts)
    opts = opts or {}

    local merged = {}

    for k, v in pairs(defaults) do
        merged[k] = v
    end

    for k, v in pairs(opts) do
        merged[k] = v
    end

    return merged
end

local MONITOR_DEFAULTS = {
    output        = "",
    mode          = "preferred",
    position      = "auto",
    scale         = 1,

    disabled      = false,
    reserved_area = 0,
    transform     = 0,
}

function ac_monitor(opts)
    hl.monitor(ac_merge(MONITOR_DEFAULTS, opts))
end

-- Dispatcher with Notification
function ac_dispatch_notify(dispatcher, message)
    hl.dispatch(dispatcher)
    hl.dispatch(hl.dsp.exec_cmd(notifycmd .. " '" .. message .. "'"))
end

-- Directional Submap
function ac_directional_submap(key, name, message, dispatcher)
    hl.bind(ModKey .. " + SHIFT + " .. key, function()
        hl.dispatch(hl.dsp.exec_cmd(notifycmd .. " '" .. message .. "' 'Press Esc to Exit'"))
        hl.dispatch(hl.dsp.submap(name))
    end)

    hl.define_submap(name, function()
        for _, dir in ipairs({
            { key = "right", x =  20, y =   0 },
            { key = "left",  x = -20, y =   0 },
            { key = "up",    x =   0, y = -20 },
            { key = "down",  x =   0, y =  20 },
        }) do
            hl.bind(
                dir.key,
                dispatcher({
                    x = dir.x,
                    y = dir.y,
                    relative = true,
                }),
                { repeating = true }
            )
        end

        hl.bind("escape", hl.dsp.submap("reset"))
    end)
end
