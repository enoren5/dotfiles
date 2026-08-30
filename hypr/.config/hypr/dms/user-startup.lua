-- Custom startup hooks and workspace rules.
-- Kept separate from hyprland.lua (so a config reset doesn't take these with
-- it) and from dms/binds-user.lua (which DMS's Control Center rewrites via
-- `dms keybinds set/remove/reset` and expects to contain only bind entries).

hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("systemctl --user start hyprland-session.target")
	hl.exec_cmd("dropbox start")
	hl.exec_cmd("hp-toolbox")
	hl.exec_cmd("resources")
	hl.exec_cmd("protonvpn-app")
	hl.exec_cmd("proton-pass")
end)

hl.workspace_rule({ workspace = "1", persistent = true, default_name = "1:ctl" })
hl.workspace_rule({ workspace = "2", persistent = true, default_name = "2:sec" })
hl.workspace_rule({ workspace = "3", persistent = false, default_name = "3:chat" })
hl.workspace_rule({ workspace = "4", persistent = true, default_name = "4:audio" })
hl.workspace_rule({ workspace = "5", persistent = true, default_name = "5:docs" })
hl.workspace_rule({ workspace = "6", persistent = true, default_name = "6:web" })
hl.workspace_rule({ workspace = "7", persistent = false, default_name = "7:web" })
hl.workspace_rule({ workspace = "8", persistent = true, default_name = "8:dev" })
hl.workspace_rule({ workspace = "9", persistent = false, default_name = "9:dev" })
hl.workspace_rule({ workspace = "10", persistent = false, default_name = "10:dev" })
hl.workspace_rule({ workspace = "11", persistent = true, default_name = "11:steam" })
hl.workspace_rule({ workspace = "12", persistent = false, default_name = "12:demo" })

-- hl.workspace_rule({ workspace = "2", "name:Hello"})
-- Cycling
-- hl.bind("SUPER + Tab", function()
--     hl.dispatch(hl.dsp.window.cycle_next())
--     hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
-- end)

hl.bind("ALT + Tab",           hl.dsp.window.cycle_next())
-- hl.bind("ALT + SHIFT + Tab",   hl.dsp.window.swap({ prev = true }))
