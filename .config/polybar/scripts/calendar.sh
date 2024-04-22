#!/bin/sh

if eww active-windows | grep -qw "calendar"; then
  eww close calendar
else
  eww close-all && eww open calendar
fi
