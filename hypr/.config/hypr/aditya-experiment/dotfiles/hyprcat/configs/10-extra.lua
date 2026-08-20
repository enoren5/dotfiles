-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Extra ---------------------------

-- Workspace Rules
--
-- hl.workspace_rule({ workspace = "3", no_rounding = true, decorate = false })
-- hl.workspace_rule({ workspace = "name:coding", no_rounding = true, decorate = false, gaps_in = 0, gaps_out = 0, no_border = true, monitor = "eDP-1" })
-- hl.workspace_rule({ workspace = "8", border_size = 8 })
-- hl.workspace_rule({ workspace = "name:Hello", monitor = "DP-1", default = true })
-- hl.workspace_rule({ workspace = "name:gaming", monitor = "desc:Chimei Innolux Corporation 0x150C", default = true })
-- hl.workspace_rule({ workspace = "5", on_created_empty = "[float] firefox" })
-- hl.workspace_rule({ workspace = "special:scratchpad", on_created_empty = "foot" })
-- hl.workspace_rule({ workspace = "15", animation = "slidevert", default_name = "slider" })

-- Per-Workspace Layout
--
hl.workspace_rule({ workspace = "1", layout = "dwindle" })
hl.workspace_rule({ workspace = "2", layout = "master" })
hl.workspace_rule({ workspace = "3", layout = "scrolling" })

-- ---

-- Tearing
--
-- Screen tearing is used to reduce latency and/or jitter in games.
--
-- hl.config({
--     general = {
--         allow_tearing = true,
--     },
-- })
-- hl.window_rule({
--   match = { class = "cs2" }, immediate = true
-- })

-- ---

-- Multi GPUs
--
-- If your host machine uses multiple GPUs, you may want to primarily use
-- one GPU for rendering all the elements for Hyprland including windows,
-- animations, and another for hardware acceleration for certain
-- applications, etc.
--
-- Run : `lspci | grep -E 'VGA|3D'` (or: `lspci -d ::03xx`) to list all the video devices available
-- Then Run : `ls -l /dev/dri/by-path` to match the bus IDs and determine
-- your integrated and dedicated GPUs.
--
-- After determining which "card" belongs to which GPU, we now have to tell
-- Hyprland which GPUs to use by setting the AQ_DRM_DEVICES environment variable.
--
-- hl.env("AQ_DRM_DEVICES", "/dev/dri/card0:/dev/dri/card1")
