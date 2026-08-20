-- Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
--
-- Hyprland configuration : Miscellaneous -------------------

hl.config({
    misc = {
        disable_hyprland_logo           = true,
        disable_splash_rendering        = false,
        disable_scale_notification      = false,
        col = { splash                  = hypr_splash_col,},                             
        font_family                     = groupbar_font_family,
        splash_font_family              = groupbar_font_family,
        force_default_wallpaper         = 0,
        vrr                             = 0,
        mouse_move_enables_dpms         = false,
        key_press_enables_dpms          = false,
        name_vk_after_proc              = true,
        always_follow_on_dnd            = true,
        layers_hog_keyboard_focus       = true,
        animate_manual_resizes          = false,
        animate_mouse_windowdragging    = false,
        disable_autoreload              = false,
        enable_swallow                  = false,
        swallow_regex                   = "",
        swallow_exception_regex         = "",
        focus_on_activate               = true,
        mouse_move_focuses_monitor      = true,
        allow_session_lock_restore      = false,
        session_lock_xray               = false,
        session_lock_blur               = false,
        background_color                = hypr_background_col,
        close_special_on_empty          = true,
        on_focus_under_fullscreen       = 2,
        exit_window_retains_fullscreen  = false,
        initial_workspace_tracking      = 1,
        initial_workspace_token_timeout = 10,
        middle_click_paste              = true,
        render_unfocused_fps            = 15,
        disable_xdg_env_checks          = false,
        disable_hyprland_guiutils_check = false,
        lockdead_screen_delay           = 1000,
        enable_anr_dialog               = true,
        anr_missed_pings                = 5,
        size_limits_tiled               = false,
        screencopy_force_8b             = true,
        disable_watchdog_warning        = false,
    },

    layout = {
        single_window_aspect_ratio           = { 0, 0 },
        single_window_aspect_ratio_tolerance = 0.1,
    },

    xwayland = {
        enabled                = true,
        use_nearest_neighbor   = true,
        force_zero_scaling     = false,
        create_abstract_socket = false,
    },

    opengl = {
        nvidia_anti_flicker = true,
    },

    render = {
        direct_scanout             = 0,
        expand_undersized_textures = true,
        xp_mode                    = false,
        ctm_animation              = 2,
        cm_enabled                 = true,
        send_content_type          = true,
        cm_auto_hdr                = 1,
        new_render_scheduling      = false,
        non_shader_cm              = 3,
        non_shader_cm_interop      = 2,
        cm_sdr_eotf                = 0,
        commit_timing_enabled      = true,
        use_fp16                   = 2,
        keep_unmodified_copy       = 2,
        use_shader_blur_blend      = false,
        icc_vcgt_enabled           = true,
        fp16_sdr_tf                = 0,
    },

    ecosystem = {
        no_update_news      = true,
        no_donation_nag     = true,
        enforce_permissions = false,
    },

    -- experimental = {
    --     wp_cm_1_2 = false,
    -- },

    -- quirks = {
    --     prefer_hdr                  = 1,
    --     skip_non_kms_dmabuf_formats = false,
    -- },

    debug = {
        overlay                    = false,
        damage_blink               = false,
        gl_debugging               = false,
        vfr                        = true,
        disable_logs               = false,
        disable_time               = true,
        damage_tracking            = 2,
        enable_stdout_logs         = false,
        manual_crash               = 0,
        suppress_errors            = false,
        log_damage                 = false,
        disable_scale_checks       = false,
        error_limit                = 5,
        error_position             = 0,
        colored_stdout_logs        = true,
        pass                       = false,
        full_cm_proto              = false,
        ds_handle_same_buffer      = true,
        ds_handle_same_buffer_fifo = true,
        fifo_pending_workaround    = false,
        render_solitary_wo_damage  = false,
        invalidate_fp16            = 1,
    },

    input_capture = {
        capture_modifiers = false,
        enforce_barriers  = true,
    },
})
