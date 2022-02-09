#!/bin/sh

if eww windows | grep -q "\*calendar"; then
  eww close calendar
else
  eww close-all && eww open calendar
fi
