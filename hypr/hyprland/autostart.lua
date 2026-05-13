require("hyprland/var")

hl.on("hyprland.start", function()

    -- Bar
    hl.exec_cmd("eww open bar0")
    hl.exec_cmd("eww open bar1")

    -- workspace
    hl.exec_cmd(wallpaper_setter .. wallpaper)

    -- notification daemon
    hl.exec_cmd(notification_daemon)

    -- wallet
    hl.exec_cmd(wallet_pam)
    hl.exec_cmd(wallet)

    -- cliphist
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")

end)