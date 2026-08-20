-- Migrated from existing hyprlang monitor lines

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })
hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "0x0", scale = 1 })
-- hl.monitor({ output = "eDP-1", mode = "addreserved", position = "10", scale = 10 })
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "1920x0", scale = 1.5 })
-- hl.monitor({ output = "HDMI-A-1", mode = "addreserved", position = "20", scale = 20 })

-- Default fallback
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })
