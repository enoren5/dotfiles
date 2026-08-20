-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Keybindings ---------------------

local HOME    = os.getenv("HOME")
local DIR     = HOME .. "/.config/hyprcat"
local scripts = DIR .. "/scripts"

local terminal = {
    alacritty = scripts .. "/alacritty",
    foot      = scripts .. "/foot",
    kitty     = scripts .. "/kitty",
}

local app = {
    files   = "thunar",
    editor  = "geany",
    browser = "firefox",
}

local cmd = {
    volume      = scripts .. "/volume",
    backlight   = scripts .. "/brightness",
    screenshot  = scripts .. "/screenshot",
    wlogout     = scripts .. "/wlogout",
    colorpicker = scripts .. "/colorpicker",
}

local rofi = {
    launcher   = scripts .. "/rofi_launcher",
    runner     = scripts .. "/rofi_runner",
    mpd        = scripts .. "/rofi_mpd",
    spotify    = scripts .. "/rofi_spotify",
    network    = scripts .. "/rofi_network",
    bluetooth  = scripts .. "/rofi_bluetooth",
    powermenu  = scripts .. "/rofi_powermenu",
    screenshot = scripts .. "/rofi_screenshot",
    asroot     = scripts .. "/rofi_asroot",
}

local wofi = {
    menu      = scripts .. "/wofi_menu",
    powermenu = scripts .. "/wofi_powermenu",
}

local hyprlock = "hyprlock --config " .. DIR .. "/hyprlock.conf"

-- Applications & Scripts -----------------------------------

-- Alacritty
hl.bind(ModKey .. " + Return",          hl.dsp.exec_cmd(terminal.alacritty))
hl.bind(ModKey .. " + SHIFT + Return",  hl.dsp.exec_cmd(terminal.alacritty .. " -f"))
hl.bind(ModKey .. " + ALT + Return",    hl.dsp.exec_cmd(terminal.alacritty .. " -F"))

-- Foot
-- hl.bind(ModKey .. " + Return",          hl.dsp.exec_cmd(terminal.foot))
-- hl.bind(ModKey .. " + SHIFT + Return",  hl.dsp.exec_cmd(terminal.foot .. " -f"))
-- hl.bind(ModKey .. " + CTRL + Return",   hl.dsp.exec_cmd(terminal.foot .. " -s"))
-- hl.bind(ModKey .. " + ALT + Return",    hl.dsp.exec_cmd(terminal.foot .. " -F"))

-- Kitty
-- hl.bind(ModKey .. " + Return",          hl.dsp.exec_cmd(terminal.kitty))
-- hl.bind(ModKey .. " + SHIFT + Return",  hl.dsp.exec_cmd(terminal.kitty .. " -f"))
-- hl.bind(ModKey .. " + ALT + Return",    hl.dsp.exec_cmd(terminal.kitty .. " -F"))

-- Apps
hl.bind(ModKey .. " + SHIFT + F",       hl.dsp.exec_cmd(app.files))
hl.bind(ModKey .. " + SHIFT + E",       hl.dsp.exec_cmd(app.editor))
hl.bind(ModKey .. " + SHIFT + W",       hl.dsp.exec_cmd(app.browser))

-- Rofi
hl.bind(ModKey .. " + SUPER_L",         hl.dsp.exec_cmd(rofi.launcher), { release = true })
hl.bind(ModKey .. " + D",               hl.dsp.exec_cmd(rofi.launcher))
hl.bind("ALT + F1",                     hl.dsp.exec_cmd(rofi.launcher))
hl.bind("ALT + F2",                     hl.dsp.exec_cmd(rofi.runner))
hl.bind(ModKey .. " + R",               hl.dsp.exec_cmd(rofi.asroot))
hl.bind(ModKey .. " + B",               hl.dsp.exec_cmd(rofi.bluetooth))
hl.bind(ModKey .. " + M",               hl.dsp.exec_cmd(rofi.spotify))
hl.bind(ModKey .. " + N",               hl.dsp.exec_cmd(rofi.network))
hl.bind(ModKey .. " + X",               hl.dsp.exec_cmd(rofi.powermenu))
hl.bind(ModKey .. " + S",               hl.dsp.exec_cmd(rofi.screenshot))

-- Wofi
-- hl.bind(ModKey .. " + SUPER_L",         hl.dsp.exec_cmd(wofi.menu), { release = true })
-- hl.bind(ModKey .. " + D",               hl.dsp.exec_cmd(wofi.menu))
-- hl.bind(ModKey .. " + X",               hl.dsp.exec_cmd(wofi.powermenu))

-- Misc
-- hl.bind(ModKey .. " + N",               hl.dsp.exec_cmd("nm-connection-editor"))
-- hl.bind(ModKey .. " + X",               hl.dsp.exec_cmd(cmd.wlogout))
hl.bind(ModKey .. " + P",               hl.dsp.exec_cmd(cmd.colorpicker))
hl.bind("CTRL + ALT + L",               hl.dsp.exec_cmd(hyprlock))

-- Function keys --------------------------------------------
hl.bind("XF86MonBrightnessUp",          hl.dsp.exec_cmd(cmd.backlight .. " --inc"),     { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",        hl.dsp.exec_cmd(cmd.backlight .. " --dec"),     { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume",         hl.dsp.exec_cmd(cmd.volume .. " --inc"),        { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",         hl.dsp.exec_cmd(cmd.volume .. " --dec"),        { locked = true, repeating = true })

hl.bind("XF86AudioMute",                hl.dsp.exec_cmd(cmd.volume .. " --toggle"),     { locked = true })
hl.bind("XF86AudioMicMute",             hl.dsp.exec_cmd(cmd.volume .. " --toggle-mic"), { locked = true })
hl.bind("XF86AudioNext",                hl.dsp.exec_cmd("mpc next"),                           { locked = true })
hl.bind("XF86AudioPrev",                hl.dsp.exec_cmd("mpc prev"),                           { locked = true })
hl.bind("XF86AudioPlay",                hl.dsp.exec_cmd("mpc toggle"),                         { locked = true })
hl.bind("XF86AudioStop",                hl.dsp.exec_cmd("mpc stop"),                           { locked = true })

-- Screenshots ----------------------------------------------
hl.bind("Print",                        hl.dsp.exec_cmd(cmd.screenshot .. " --now"),    { locked = true })
hl.bind("ALT + Print",                  hl.dsp.exec_cmd(cmd.screenshot .. " --in5"),    { locked = true })
hl.bind("SHIFT + Print",                hl.dsp.exec_cmd(cmd.screenshot .. " --in10"),   { locked = true })
hl.bind("CTRL + Print",                 hl.dsp.exec_cmd(cmd.screenshot .. " --win"))
hl.bind(ModKey .. " + Print",           hl.dsp.exec_cmd(cmd.screenshot .. " --area"))

-- Window ---------------------------------------------------
hl.bind(ModKey .. " + C",          hl.dsp.window.close())
hl.bind(ModKey .. " + Q",          hl.dsp.window.kill())
hl.bind(ModKey .. " + F",          hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(ModKey .. " + SHIFT + S",  hl.dsp.window.pseudo({ action = "toggle" }))
hl.bind(ModKey .. " + SHIFT + C",  hl.dsp.window.center())

-- Floating
hl.bind(ModKey .. " + Space", function()
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
    hl.dispatch(hl.dsp.window.center())
end)

-- Pin floating windows
hl.bind(ModKey .. " + SHIFT + P", function()
    ac_dispatch_notify(
        hl.dsp.window.pin(),
        "Toggled Pin"
    )
end)

-- Cycling
hl.bind(ModKey .. " + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
end)

hl.bind("ALT + Tab",           hl.dsp.window.swap({ next = true }))
hl.bind("ALT + SHIFT + Tab",   hl.dsp.window.swap({ prev = true }))

hl.bind("CTRL + ALT + Delete", hl.dsp.exit())

-- Layouts --------------------------------------------------

-- Cycle layout for current workspace
local layouts = {
    "scrolling",
    "dwindle",
    "master",
    "monocle",
}

local function cycle_layout()
    local workspace =
        hl.get_active_special_workspace() or
        hl.get_active_workspace()

    if not workspace then
        return
    end

    local next_layout = "dwindle"

    for i, layout in ipairs(layouts) do
        if layout == workspace.tiled_layout then
            next_layout = layouts[(i % #layouts) + 1]
            break
        end
    end

    local ws = workspace.special
        and tostring(workspace.name)
        or tostring(workspace.id)

    hl.workspace_rule({
        workspace = ws,
        layout = next_layout,
    })

    if not workspace.special then
        hl.dispatch(
            hl.dsp.exec_cmd(notifycmd .. " 'Current Layout: '" .. next_layout)
        )
    end
end

hl.bind(ModKey .. " + L", cycle_layout)

-- Focus ----------------------------------------------------

local directions = {
    { key = "left",  x = -20, y =  0 },
    { key = "right", x =  20, y =  0 },
    { key = "up",    x =  0,  y = -20 },
    { key = "down",  x =  0,  y =  20 },
}

for _, dir in ipairs(directions) do
    -- Change Focus
    hl.bind(ModKey .. " + " .. dir.key,
        hl.dsp.focus({ direction = dir.key }))

    -- Move Active
    hl.bind(ModKey .. " + SHIFT + " .. dir.key,
        hl.dsp.window.move({ direction = dir.key }))

    -- Resize Active
    hl.bind(ModKey .. " + CTRL + " .. dir.key,
        hl.dsp.window.resize({
            x = dir.x,
            y = dir.y,
            relative = true,
        }),
        { repeating = true })

    -- Move Active (Floating Only)
    hl.bind(ModKey .. " + ALT + " .. dir.key,
        hl.dsp.window.move({
            x = dir.x,
            y = dir.y,
            relative = true,
        }),
        { repeating = true })
end

-- Workspaces -----------------------------------------------
for i = 1, 9 do
    local key = i % 10
    hl.bind(ModKey .. " + " .. key,          hl.dsp.focus({ workspace = i }))
    hl.bind(ModKey .. " + SHIFT + " .. key,  hl.dsp.window.move({ workspace = i }))
end

-- Special Workspace
hl.bind(ModKey .. " + 0",          hl.dsp.workspace.toggle_special("magic"))
hl.bind(ModKey .. " + SHIFT + 0",  hl.dsp.window.move({ workspace = "special:magic" }))

-- Seamless Workspace Switching
local workspace_cycle = {
    { key = "left",  target = "e-1" },
    { key = "right", target = "e+1" },
}
for _, ws in ipairs(workspace_cycle) do
    hl.bind("CTRL + ALT + " .. ws.key,
        hl.dsp.focus({ workspace = ws.target }))

    hl.bind("CTRL + ALT + SHIFT + " .. ws.key,
        hl.dsp.window.move({ workspace = ws.target }))
end

-- Scroll through existing workspaces with ModKey + scroll
local workspace_scroll = {
    { key = "mouse_down", target = "e-1" },
    { key = "mouse_up",   target = "e+1" },
}
for _, ws in ipairs(workspace_scroll) do
    hl.bind(ModKey .. " + " .. ws.key,
        hl.dsp.focus({ workspace = ws.target }))
end

-- Groups ---------------------------------------------------
hl.bind(ModKey .. " + G", function()
    ac_dispatch_notify(
        hl.dsp.group.toggle(),
        "Toggled Group Mode"
    )
end)

hl.bind(ModKey .. " + SHIFT + L", function()
    ac_dispatch_notify(
        hl.dsp.group.lock_active("toggle"),
        "Toggled Group Lock"
    )
end)

hl.bind(ModKey .. " + comma",     hl.dsp.group.prev())
hl.bind(ModKey .. " + period",    hl.dsp.group.next())

hl.bind(ModKey .. " + CTRL + G",  hl.dsp.window.move({ into_or_create_group = "left" }))
hl.bind(ModKey .. " + ALT + G",   hl.dsp.window.move({ out_of_group = true }))
hl.bind(ModKey .. " + SHIFT + N", hl.dsp.group.move_window())

-- Submaps --------------------------------------------------

ac_directional_submap("R", "resize", "Resize Mode", hl.dsp.window.resize)
ac_directional_submap("M", "move",   "Move Mode",   hl.dsp.window.move)

-- Mouse ----------------------------------------------------

local mouse_bind = {
    mouse = true,
}

-- Mouse Buttons
hl.bind(ModKey .. " + mouse:272",         hl.dsp.window.drag(),                               mouse_bind)
hl.bind(ModKey .. " + mouse:273",         hl.dsp.window.resize(),                             mouse_bind)
hl.bind(ModKey .. " + SHIFT + mouse:273", hl.dsp.window.resize({ keep_aspect_ratio = true }), mouse_bind)

-- Touchpad
-- hl.bind(ModKey .. " + CTRL_L", hl.dsp.window.drag(),   mouse_bind)
-- hl.bind(ModKey .. " + ALT_L",  hl.dsp.window.resize(), mouse_bind)

-- Switches -------------------------------------------------

local locked = {
    locked = true,
}

hl.bind("switch:Lid Switch",     hl.dsp.exec_cmd(hyprlock),        locked)
hl.bind("switch:on:Lid Switch",  hl.dsp.dpms({ action = "off" }),  locked)
hl.bind("switch:off:Lid Switch", hl.dsp.dpms({ action = "on" }),   locked)
