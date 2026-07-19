#!/bin/bash
set -euo pipefail

THEME_NAME="Chicago95"
ICON_THEME="Memphis98"
CURSOR_THEME="Chicago95_Standard_Cursors"
FONT_NAME="Tahoma 10"

gsettings set org.gnome.desktop.interface gtk-theme "$THEME_NAME"
gsettings set org.gnome.desktop.interface icon-theme "$ICON_THEME"
gsettings set org.gnome.desktop.interface font-name "$FONT_NAME"
gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_THEME"
gsettings set org.gnome.desktop.interface color-scheme "prefer-light"

echo finished