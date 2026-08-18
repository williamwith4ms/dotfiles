#!/bin/bash
set -euo pipefail

THEME_NAME="Gruvbox-Dark"
ICON_THEME="Papirus-Dark"
CURSOR_THEME="Adwaita"
FONT_NAME="Noto Sans 11"

gsettings set org.gnome.desktop.interface gtk-theme "$THEME_NAME"
gsettings set org.gnome.desktop.interface icon-theme "$ICON_THEME"
gsettings set org.gnome.desktop.interface font-name "$FONT_NAME"
gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_THEME"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

echo finished
