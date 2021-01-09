############################################################################################################################
# Packages installer, Services starter, System updates, System cleanup
# Author   	: 	xbc4000
# Website 	: 	github.com/xbc4000
# Written to be used on 64 bits computers
############################################################################################################################

#!/bin/bash
set -e

#system updates
yay -Syu --noconfirm --needed

  echo "System updated"

#fonts
yay -S --noconfirm --needed ttf-hack

  echo "Font packages installed"

#yay packages install
yay -S --noconfirm --needed acpi aarchup aconfmgr-git anydesk-bin autotiling
  yay -S --noconfirm --needed barrier barrier-headless betterdiscordctl-git
    yay -S --noconfirm --needed cmake clamav clamtk chatty
      yay -S --noconfirm --needed docker
        yay -S --noconfirm --needed etcher-bin
          yay -S --noconfirm --needed fprintd fingerprint-gui fancontrol-gui fwupd
            yay -S --noconfirm --needed gotop google-earth-pro guake
              yay -S --noconfirm --needed hexchat hddtemp howdy
                yay -S --noconfirm --needed input-wacom-dkms
                  yay -S --noconfirm --needed lm_sensors libfprint lsb-release lib32-libevdev libwacom lutris linux-steam-integration
                    yay -S --noconfirm --needed materia-gtk-theme microsoft-edge-dev minecraft-launcher mcpelauncher-hx-script
                    yay -S --noconfirm --needed netflix-qdesktop notify-osd npm nlohmann-json
                  yay -S --noconfirm --needed obs-studio obs-v4l2sink pod2man
                yay -S --noconfirm --needed pacaur pikaur paprefs perl-anyevent-i3 privoxy python-croniter
              yay -S --noconfirm --needed qbittorrent
            yay -S --noconfirm --needed radiotray redshift rkhunter
          yay -S --noconfirm --needed sharutils sl safeeyes skdet spotify spotifywm-git sof-firmware screenrotator-git steam steam-native-runtime steam-tweaks
        yay -S --noconfirm --needed telegram-desktop tp_smapi thinkfan tk twitch
      yay -S --noconfirm --needed unclutter uudeview
    yay -S --noconfirm --needed vpn-unlimited vnstat v4l2loopback-dkms
  yay -S --noconfirm --needed xf86-input-wacom xprintidle
yay -S --noconfirm --needed youtube-desktop

  echo "Yay packages installed"

#Fingerprint
sudo fwupdmgr enable-remote lvfs-testing -y
fwupdmgr refresh
fwupdmgr update

  echo "Fingerprint sensor enabled"

#Modules
modprobe thinkpad_acpi
cat /proc/acpi/ibm/fan

  echo "Modules enabled"

#Thinkfan
sudo systemctl enable thinkfan.service
sudo systemctl start thinkfan.service

  echo "Thinkfan enabled"

#Vpn
sudo systemctl enable vpn-unlimited-daemon.service
sudo systemctl start vpn-unlimited-daemon.service

  echo "Vpn enabled"
