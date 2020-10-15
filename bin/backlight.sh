#!/bin/bash

if type xbacklight &> /dev/null; then
    case "$1" in
        down ) if [ $(echo "$(xbacklight -get) > 6.0" | bc) == 1 ];then xbacklight -dec 5; fi ;;
        up ) xbacklight -inc 5
    esac
fi
