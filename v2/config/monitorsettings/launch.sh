#!/bin/bash

#This will likely need to be edited for your use case.

xrandr --output HDMI-0 --rotate left --rate 75

xrandr --output DP-0 --primary --mode 1920x1080 --rate 144 --right-of HDMI-0
