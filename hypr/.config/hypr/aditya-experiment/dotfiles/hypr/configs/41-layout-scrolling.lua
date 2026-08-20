-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Scrolling Layout ----------------

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
        column_width             = 0.5,
        focus_fit_method         = 0,
        follow_focus             = true,
        follow_min_visible       = 0.4,
        explicit_column_widths   = "0.333, 0.5, 0.667, 1.0",
        wrap_focus               = true,
        wrap_swapcol             = true,
        direction                = "right",
    },
})

-- Scrolling Layout Binds
-- Modify according to your taste, remove the duplications in other layout/keybinding files
--
-- hl.bind("SUPER + period",         hl.dsp.layout("move +col"))
-- hl.bind("SUPER + comma",          hl.dsp.layout("move -col"))
-- 
-- hl.bind("SUPER + SHIFT + period", hl.dsp.layout("colresize +0.2"))
-- hl.bind("SUPER + SHIFT + comma",  hl.dsp.layout("colresize -0.2"))
-- 
-- hl.bind("SUPER + ALT + period",   hl.dsp.layout("swapcol r"))
-- hl.bind("SUPER + ALT + comma",    hl.dsp.layout("swapcol l"))
-- 
-- hl.bind("SUPER + T",              hl.dsp.layout("fit active"))
-- 
-- hl.bind("SUPER + L",              hl.dsp.layout("focus r"))
-- hl.bind("SUPER + H",              hl.dsp.layout("focus l"))
-- 
-- hl.bind("SUPER + Z",              hl.dsp.layout("consume"))
-- hl.bind("SUPER + SHIFT + Z",      hl.dsp.layout("expel"))
