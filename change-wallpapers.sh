#!/bin/bash

# Specify the path to the desktop background image file
picture=`find . | grep -E "jpg|jpeg|png|tiff|tif|JPG|JPEG|PNG|TIFF|TIF" | sort -R | tail -n 1`
root=`pwd`
picture_uri=file://$root/$picture

# Specify one of the rendering options for the background image:
# 'none', 'wallpaper', 'centered', 'scaled', 'stretched', 'zoom', 'spanned'
picture_options=zoom

gsettings set org.gnome.desktop.background picture-options $picture_options
gsettings get org.gnome.desktop.background picture-options

gsettings set org.gnome.desktop.background picture-uri $picture_uri
gsettings get org.gnome.desktop.background picture-uri

