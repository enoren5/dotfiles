-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Output --------------------------

-- The general config of a monitor looks like this:
--
-- hl.monitor({
--     output = "...",
--     mode = "...",
--     position = "...",
--     scale = ...,
--     ... = ...,
-- })
--
-- To list all available monitors (active and inactive):
-- hyprctl monitors all

-- ---

-- Auto monitors
ac_monitor()

-- HiDPI Laptop
-- ac_monitor({
--     output   = "eDP-1",
--     mode     = "2944x1840@90.00",
--     position = "0x0",
--     scale    = 2.0,
-- })

-- External Display
-- ac_monitor({
--     output   = "HDMI-A-1",
--     mode     = "1920x1080@60",
--     position = "1920x0",
--     scale    = 1.0,
-- })

-- External Display, By Description
-- ac_monitor({
--     output   = "desc:Samsung Electric Company S24C31x H9DWA00333",
--     mode     = "1920x1080@60",
--     position = "1920x0",
--     scale    = 1.0,
-- })

-- Disable a monitor
-- ac_monitor({
--     output   = "eDP-1",
--     disabled = true,
-- })
