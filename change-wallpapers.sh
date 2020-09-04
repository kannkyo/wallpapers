#!/bin/bash

cd `dirname $0`

# To change wallpaper without X11
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ | cut -d= -f2-)

# Specify the path to the desktop background image file
picture=`find . | grep -E "jpg|jpeg|png|tiff|tif|JPG|JPEG|PNG|TIFF|TIF" | sort -R | tail -n 1`
root=`pwd`
picture_uri=file://$root/$picture

# Specify one of the rendering options for the background image:
# 'none', 'wallpaper', 'centered', 'scaled', 'stretched', 'zoom', 'spanned'
picture_options=zoom

gsettings set org.gnome.desktop.background draw-background false
gsettings get org.gnome.desktop.background draw-background

gsettings set org.gnome.desktop.background picture-options $picture_options
gsettings get org.gnome.desktop.background picture-options

gsettings set org.gnome.desktop.background picture-uri $picture_uri
gsettings get org.gnome.desktop.background picture-uri

