# Hyprland Keymaps

Reference table of all keybinds currently defined, so new binds don't collide with these.

`mainMod` = `SUPER`

## Apps & System

| Keybind          | Action                                 |
| ---------------- | -------------------------------------- |
| `SUPER + T`      | Launch terminal                        |
| `SUPER + Q`      | Close active window                    |
| `SUPER + M`      | Shutdown (hyprshutdown or `uwsm stop`) |
| `SUPER + E`      | Launch file manager                    |
| `SUPER + B`      | Launch browser                         |
| `SUPER + ESCAPE` | Lock screen (`hyprlock`)               |

## Menu / Launcher

| Keybind              | Action                                        |
| -------------------- | --------------------------------------------- |
| `SUPER + D`          | App launcher (drun)                           |
| `SUPER + W`          | Window switcher menu                          |
| `SUPER + CTRL + D`   | SSH menu                                      |
| `SUPER + V`          | Clipboard history (cliphist → menu → wl-copy) |
| `SUPER + .` (period) | Emoji picker (rofimoji)                       |

## Focus Movement

| Keybind                   | Action      |
| ------------------------- | ----------- |
| `SUPER + H` / `SUPER + ←` | Focus left  |
| `SUPER + L` / `SUPER + →` | Focus right |
| `SUPER + J` / `SUPER + ↓` | Focus down  |
| `SUPER + K` / `SUPER + ↑` | Focus up    |

## Window Management

| Keybind              | Action            |
| -------------------- | ----------------- |
| `SUPER + F`          | Toggle fullscreen |
| `SUPER + C`          | Toggle floating   |
| `SUPER + LMB` (drag) | Move window       |
| `SUPER + RMB` (drag) | Resize window     |

## Workspaces

| Keybind                      | Action                                   |
| ---------------------------- | ---------------------------------------- |
| `SUPER + 1`–`9`, `0`         | Focus workspace 1–10                     |
| `SUPER + SHIFT + 1`–`9`, `0` | Move window to workspace 1–10            |
| `SUPER + S`                  | Toggle special workspace `magic`         |
| `SUPER + SHIFT + S`          | Move window to special workspace `magic` |
| `SUPER + Scroll Down`        | Focus next workspace (`e+1`)             |
| `SUPER + Scroll Up`          | Focus previous workspace (`e-1`)         |

## Media & Hardware Keys

| Keybind                 | Action                     |
| ----------------------- | -------------------------- |
| `XF86AudioRaiseVolume`  | Volume up                  |
| `XF86AudioLowerVolume`  | Volume down                |
| `XF86AudioMute`         | Toggle mute                |
| `XF86AudioMicMute`      | Toggle mic mute            |
| `XF86MonBrightnessUp`   | Brightness up              |
| `XF86MonBrightnessDown` | Brightness down            |
| `switch:on:Lid Switch`  | Suspend on lid close       |
| `XF86AudioNext`         | Next track (playerctl)     |
| `XF86AudioPause`        | Play/pause (playerctl)     |
| `XF86AudioPlay`         | Play/pause (playerctl)     |
| `XF86AudioPrev`         | Previous track (playerctl) |

## Screenshots

| Keybind                 | Action                           |
| ----------------------- | -------------------------------- |
| `PRINT`                 | Screenshot region                |
| `SUPER + PRINT`         | Screenshot active window         |
| `SUPER + SHIFT + PRINT` | Screenshot active output/monitor |

## Notifications (dunst)

| Keybind                      | Action                             |
| ---------------------------- | ---------------------------------- |
| `` SUPER + ` `` (grave)      | Pop last notification from history |
| `SUPER + SHIFT + ` ` (grave) | Toggle dunst pause                 |

---
