-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Window Rules --------------------

-- Floating applications
for _, class in ipairs({
    "foot-float|alacritty-float|kitty-float",
    "yad|Yad|nm-connection-editor|org.pulseaudio.pavucontrol",
    "xfce-polkit|kvantummanager|qt5ct|qt6ct",
    "feh|viewnior|gimp|MPlayer|catfish",
    "VirtualBox Manager|qemu|Qemu-system-x86_64",
    "io.archcraft.Welcome|io.archcraft.Help|io.calamares.calamares",
}) do
    hl.window_rule({
        match = { class = class },
        float = true,
    })
end

-- Floating dialogs
for _, title in ipairs({
    "File Operation Progress",
    "Confirm to replace files",
    "^(Archcraft Installer)(.*)$",
}) do
    hl.window_rule({
        match = { title = title },
        float = true,
    })
end

-- Default floating size
for _, class in ipairs({
    "Yad|yad",
    "viewnior",
}) do
    hl.window_rule({
        match = { class = class },
        size = { "60%", "64%" },
    })
end

-- Center windows
for _, class in ipairs({
    "io.calamares.calamares",
    "viewnior",
}) do
    hl.window_rule({
        match = { class = class },
        center = true,
    })
end

-- Thunar rename dialog
hl.window_rule({ match = { class = "thunar", title = "(Rename .*)" }, float = true })

-- Alacritty floating geometry
hl.window_rule({ match = { class = "Alacritty|alacritty|alacritty-float" }, size = { 785, 450 } })

-- Fullscreen animations
hl.window_rule({ match = { class = "foot-full|alacritty-full|kitty-full" }, animation = "slide down" })
hl.window_rule({ match = { class = "wlogout" }, animation = "slide up" })

-- Firefox
hl.window_rule({ match = { class = "firefox" }, workspace = 2 })
hl.window_rule({ match = { class = "firefox", title = "(Picture-in-Picture)" }, float = true })
hl.window_rule({ match = { class = "firefox", title = "(Picture-in-Picture)" }, move = { "(cursor_x-(window_w*0.5))", "(cursor_y-(window_h*0.5))" } })

-- ---

-- Layer rules
for _, namespace in ipairs({
    "rofi",
    "notifications",
}) do
    hl.layer_rule({
        match = { namespace = namespace },
        animation = "slide",
    })
end
