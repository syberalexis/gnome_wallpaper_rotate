#!/usr/bin/sh
WALLPAPER_DIR="${HOME}/Wallpaper"

next_wallpaper=$(ls "${WALLPAPER_DIR}" | shuf -n 1)
gsettings set org.gnome.desktop.background picture-uri "file://${WALLPAPER_DIR}/${next_wallpaper}"
