#!/bin/bash

# Kill picom
pkill picom

# Take a screenshot and copy it to the clipboard
maim -s | xclip -selection clipboard -t image/png

# Restart picom with the experimental backend
picom --experimental-backend -b

