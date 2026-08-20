-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Dwindle Layout ------------------

hl.config({
    dwindle = {
        force_split                  = 0,
        preserve_split               = true,
        smart_split                  = false,
        smart_resizing               = true,
        permanent_direction_override = false,
        special_scale_factor         = 1,
        split_width_multiplier       = 1.0,
        use_active_for_splits        = true,
        default_split_ratio          = 1.0,
        split_bias                   = 0,
        precise_mouse_move           = false,
    },
})

-- Dwindle Layout Binds
-- Modify according to your taste, remove the duplications in other layout/keybinding files
--
-- hl.bind("SUPER + Equal",         hl.dsp.layout("splitratio +0.1"), { repeating = true })
-- hl.bind("SUPER + Minus",         hl.dsp.layout("splitratio -0.1"), { repeating = true })
-- hl.bind("SUPER + SHIFT + Equal", hl.dsp.layout("splitratio 1.0 exact"))
-- 
-- hl.bind("SUPER + Z",             hl.dsp.layout("rotatesplit"))
-- hl.bind("SUPER + SHIFT + Z",     hl.dsp.layout("rotatesplit 180"))
-- hl.bind("SUPER + CTRL + Z",      hl.dsp.layout("rotatesplit -90"))
-- 
-- hl.bind("SUPER + H",             hl.dsp.layout("preselect l"))
-- hl.bind("SUPER + L",             hl.dsp.layout("preselect r"))
-- hl.bind("SUPER + K",             hl.dsp.layout("preselect u"))
-- hl.bind("SUPER + J",             hl.dsp.layout("preselect d"))
-- 
-- hl.bind("SUPER + A",             hl.dsp.layout("togglesplit"))
-- hl.bind("SUPER + SHIFT + T",     hl.dsp.layout("movetoroot active unstable"))
