hl.monitor({
    output = "DP-3",
    mode = "2560x1440@165.00Hz",
    position = "0x0",
    scale = "1"
})

hl.monitor({
    output = "DP-1",
    mode = "1920x1080@60.00Hz",
    position = "2560x240",
    scale = "1"
})

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        20,
        20,
        20,

        border_size = 2,

        col = {
            active_border = "rgba(000080FF)",
            inactive_border = "rgba(D4D0C8FF)"
        },

        resize_on_border = false,

        allow_tearing = false
    },

    decoration = {
        -- rounding = 10,
        -- rounding_power = 2,

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696
        },

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)"
        },

        dim_inactive = false,
        active_opacity = 1.0,
        inactive_opacity = 1.0
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true
    },

    input = {
        kb_layout = "us",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },

    misc = {
        disable_hyprland_logo = true,
        force_default_wallpaper = 1
    },

    master = {
        new_status = "master"
    }
})
