---@diagnostic disable: undefined-global
require("hyprland/var")

hl.on("hyprland.start", function()
	hl.exec_cmd("protonvpn-app")
	-- Bar
	hl.exec_cmd("eww open hzBar0")
	hl.exec_cmd("eww open vBar1")

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

	-- startup applications
	hl.exec_cmd("sleep 5 && keepassxc --minimized")
	hl.exec_cmd("sleep 5 && protonmail-bridge --no-window")
	hl.exec_cmd(
		'sleep 5 && discord --user-agent "Mozilla/5.0 (X11; Linux x86_64; rv:150.0) Gecko/20100101 Firefox/150.0" ',
		{ workspace = "special:chat silent" }
	)
	hl.exec_cmd("sleep 30 && thunderbird", { workspace = "10 silent" })
end)
