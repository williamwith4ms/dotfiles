require("hyprland/var")

local mainMod = "SUPER"

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd('command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown --post-cmd "uwsm stop" || uwsm stop')
)
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("hyprlock"))
-- Menu
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu .. " -show drun"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(menu .. " -show window"))
hl.bind(mainMod .. " + CTRL + D", hl.dsp.exec_cmd(menu .. " -show ssh"))
hl.bind(
	mainMod .. " + V",
	hl.dsp.exec_cmd("cliphist list | " .. menu .. " -dmenu -display-columns 2 | cliphist decode | wl-copy")
)
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("rofimoji -a copy"))

-- Move focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))

-- window management
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(2))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen(1))
hl.bind(mainMod .. " + C", hl.dsp.window.float())

-- Switch workspace
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("chat"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:chat" }))

hl.bind(mainMod .. " + X", hl.dsp.workspace.toggle_special("music"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.window.move({ workspace = "special:music" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("~/.config/scripts/volume_control.sh up"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("~/.config/scripts/volume_control.sh down"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("~/.config/scripts/volume_control.sh toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("~/.config/scripts/brightness_control.sh up"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd("~/.config/scripts/brightness_control.sh down"),
	{ locked = true, repeating = true }
)

-- laptop swiches
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })
-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -o ~/Pictures/Screenshots/ -m region"))
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -o ~/Pictures/Screenshots/ -m active -m window"))
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -o ~/Pictures/Screenshots/ -m active -m output"))

-- dunst
hl.bind(mainMod .. " + grave", hl.dsp.exec_cmd("dunstctl history-pop"))
hl.bind(mainMod .. " + SHIFT + grave", hl.dsp.exec_cmd("~/.config/scripts/dunst_pause_toggle.sh"))

hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("~/.scripts/toggle-monitor.sh"))
