#!/bin/bash
xsecurelock &
sleep 1
systemctl suspend-then-hibernate
