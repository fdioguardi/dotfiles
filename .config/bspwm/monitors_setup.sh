#!/bin/bash

# NOTE: This is a very simplistic approach because I alerady know the settings I want to apply

function setup_display
{
	xrandr --output $primary_monitor_name --primary --mode 1920x1080 --rotate normal --output $external_monitor_name --mode 1920x1080 --rotate normal --right-of $primary_monitor_name
}

primary_monitor_name="eDP-1"
external_monitor_name="HDMI-1"
external_monitor_status=$(xrandr -q | grep -w "$external_monitor_name")

if [[ $external_monitor_status = *\ connected* ]]; then # disconnected == *connected*, so "\ "solves it
	setup_display
	bspc monitor $primary_monitor_name -d I II III IV V
	bspc monitor $external_monitor_name -d VI VII VIII IX X
else
	bspc monitor $primary_monitor_name -d I II III IV V VI VII VIII IX X
fi
