-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Master Layout -------------------

hl.config({
    master = {
        allow_small_split             = false,
        special_scale_factor          = 1,
        mfact                         = 0.55,
        new_status                    = "slave",
        new_on_top                    = false,
        new_on_active                 = "none",
        orientation                   = "left",
        slave_count_for_center_master = 2,
        center_master_fallback        = "left",
        smart_resizing                = true,
        drop_at_cursor                = true,
        always_keep_position          = false,
        focus_master_on_close         = false,
    },
})

-- Master Layout Binds
-- Modify according to your taste, remove the duplications in other layout/keybinding files
--
-- hl.bind("SUPER + S",            hl.dsp.layout("swapwithmaster"))
-- hl.bind("SUPER + M",            hl.dsp.layout("focusmaster"))
-- hl.bind("SUPER + Tab",          hl.dsp.layout("cyclenext"))
-- hl.bind("SUPER + SHIFT + Tab",  hl.dsp.layout("cycleprev"))
-- hl.bind("SUPER + SHIFT + S",    hl.dsp.layout("swapnext"))
-- hl.bind("SUPER + CTRL + S",     hl.dsp.layout("swapprev"))
-- hl.bind("SUPER + Equal",        hl.dsp.layout("addmaster"))
-- hl.bind("SUPER + Minus",        hl.dsp.layout("removemaster"))
-- hl.bind("SUPER + O",            hl.dsp.layout("orientationcycle"))
