#!/bin/bash

action=$(echo -e "Shut down\nReboot\nLock\nSuspend\nHibernate\nCancel" | dmenu -i -p "What do you want the computer to do?")

case $action in
	"Shut down")    shutdown -P now "Shutting down..."          ;;
	"Reboot")       shutdown -r now "Rebooting..."              ;;
    "Lock")         ~/.config/bspwm/scripts/lockscreen.sh -l    ;;
	"Suspend")      ~/.config/bspwm/scripts/lockscreen.sh -s    ;;
	"Hibernate")    systemctl hibernate                         ;;
	"Cancel")       exit 0                                      ;;
esac

unset action
