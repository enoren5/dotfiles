-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration file for Archcraft
-- Hyprland Version: 0.56.1
--
-- Documentation:
-- https://wiki.hypr.land/

local HOME = os.getenv("HOME")

-- Load configuration modules
--
-- Core
require("configs/00-hyprtheme")
require("configs/00-utils")
require("configs/01-general")
require("configs/02-decoration")
require("configs/03-animations")
require("configs/04-input")
require("configs/05-gestures")
require("configs/06-group")
require("configs/07-binds")
require("configs/08-cursor")
require("configs/09-misc")
require("configs/10-extra")

-- Output
require("configs/20-monitor")

-- Layouts
require("configs/30-layout-dwindle")
require("configs/40-layout-master")
require("configs/41-layout-scrolling")

-- Rules
require("configs/50-window-rules")

-- Keybindings
require("configs/60-key-bindings")

-- Permissions
require("configs/70-permissions")

-- Startup (exec-once)
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd(HOME .. "/.config/hypr/scripts/startup")
end)
