#!/bin/bash

# Remove Mono and Orca
sudo apt remove -y mono-runtime-common gnome-orca
echo "Mono and Orca are gone!"

# Install Audacious and VLC
apt install -y audacious vlc
echo "Audacious and VLC have been installed." && sleep 5
