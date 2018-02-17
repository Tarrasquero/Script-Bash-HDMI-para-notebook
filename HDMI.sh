#!/bin/bash
# -*- ENCODING: UTF-8 -*-


xrandr | grep "HDMI-0 disconnected"
if [ $? -ne 0 ]; then

xrandr --output VGA-0 --off --output LVDS --primary --mode 1600x900 --pos 1024x0 --rotate normal --output HDMI-0 --mode 1024x768 --pos 0x0 --rotate normal && notify-send -i /usr/share/icons/gnome/48x48/devices/display.png "HDMI Funcionando"
else

xrandr --output VGA-0 --off --output LVDS --primary --mode 1600x900 --pos 0x0 --rotate normal --output HDMI-0 --off && notify-send -i /usr/share/icons/gnome/48x48/devices/display.png "HDMI Apagado"
fi
exit 0
