############################################################################################################################
# Personal configs installer
# Author   	: 	xbc4000
# Website 	: 	github.com/xbc4000
# Written to be used on 64 bits computers
############################################################################################################################

#!/bin/bash
set -e

cp -r i3/* ~/.config/i3/
cp -r settings/polybar/* ~/.config/polybar/

  echo "Custom settings installed"

  echo "AUTO REBOOTING NOW"

sudo systemctl -i reboot
