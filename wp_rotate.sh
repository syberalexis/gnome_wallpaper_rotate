#!/usr/bin/sh
WALLPAPER_DIR="${HOME}/Wallpaper"

export DISPLAY=":$(find /tmp/.X11-unix/* | sed 's#/tmp/.X11-unix/X##' | head -n 1)"
export DBUS_SESSION_BUS_ADDRESS=$(grep -P -o -a "(?<=DBUS_SESSION_BUS_ADDRESS=).+?(?=\x00)" /proc/"$(pgrep gnome-session | head -1)"/environ)

next_wallpaper=$(ls "${WALLPAPER_DIR}" | shuf -n 1)
gsettings set org.gnome.desktop.background picture-uri "file://${WALLPAPER_DIR}/${next_wallpaper}"
gsettings set org.gnome.desktop.background picture-uri-dark "file://${WALLPAPER_DIR}/${next_wallpaper}"
