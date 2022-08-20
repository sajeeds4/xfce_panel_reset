#!/bin/bash

#to backup current xfce4 panel configuration

cp -r ~/.config/xfce4 ~/xfce4

# Quit to xfce4 pannel

xfce4-panel --quit

#killing xfce4 configuration daemon

pkill xfconfd

#deleting setting for the pannel

rm -rf ~/.config/xfce4/panel

#clearing the settings for xfconfd

rm -rf ~/.config/xfce4/xfconf/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

#restarting the panel

xfce4-panel
