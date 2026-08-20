-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Animations ----------------------

-- Enable Animations
hl.config({
    animations = {
        enabled              = true,
        workspace_wraparound = false,
    },
})

-- Animation curves
hl.curve("default",     { type = "bezier", points = { {0.05, 0.90}, {0.10, 1.00} } })
hl.curve("overshoot",   { type = "bezier", points = { {0.50, 0.90}, {0.10, 1.10} } })
hl.curve("snappy",      { type = "bezier", points = { {0.15, 1.00}, {0.30, 1.00} } })
hl.curve("soft",        { type = "bezier", points = { {0.20, 0.85}, {0.20, 1.00} } })
hl.curve("bounce",      { type = "bezier", points = { {0.35, 1.30}, {0.30, 1.00} } })
hl.curve("cinematic",   { type = "bezier", points = { {0.20, 0.60}, {0.00, 1.00} } })
hl.curve("linear",      { type = "bezier", points = { {0.00, 0.00}, {1.00, 1.00} } })

-- Windows
ac_anim("windowsIn",           5, "popin 0%")
ac_anim("windowsOut",          5, "popin")
ac_anim("windowsMove",         5, "slide")

-- Layers
ac_anim("layersIn",            4, "slide")
ac_anim("layersOut",           4, "slide")

-- Fade
ac_anim("fadeIn",              8)
ac_anim("fadeOut",             8)
ac_anim("fadeSwitch",          8)
ac_anim("fadeShadow",          8)
ac_anim("fadeGlow",            8)
ac_anim("fadeDim",             8)
ac_anim("fadeLayersIn",        8)
ac_anim("fadeLayersOut",       8)
ac_anim("fadePopupsIn",        5)
ac_anim("fadePopupsOut",       5)
ac_anim("fadeDpms",           10)

-- Borders
ac_anim("border",             20)
ac_anim("borderangle",        20, "once")
ac_anim("shadowangle",        20, "once")
ac_anim("glowangle",          20, "once")

-- Workspaces
ac_anim("workspacesIn",        5, "slide")
ac_anim("workspacesOut",       5, "slide")
ac_anim("specialWorkspaceIn",  5, "fade")
ac_anim("specialWorkspaceOut", 5, "fade")

-- Misc
ac_anim("zoomFactor",         10)
ac_anim("monitorAdded",       10)
