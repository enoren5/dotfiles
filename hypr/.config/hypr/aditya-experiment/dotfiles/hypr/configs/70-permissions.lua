-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Permissions ---------------------

-- Permissions work a bit like Android ones.
-- If an app tries to do something sensitive with the compositor (Hyprland),
-- Hyprland will pop up a notification asking you if you want to let it do that.
--
-- Syntax:
-- hl.permission({ binary, type, mode })

-- Enable permissions
-- hl.config({
--     ecosystem = {
--         enforce_permissions = true,
--     },
-- })

-- Example
-- hl.permission({ binary = "/usr/bin/grim", type = "screencopy", mode = "allow" })
-- hl.permission({ binary = "/usr/bin/appsuite-.*", type = "screencopy", mode = "allow" })
-- hl.permission({ binary = "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", type = "screencopy", mode = "allow" })
