#!/bin/bash

# Ask the user if they are using Arch or an Arch derivative
echo "Are you using Arch or an Arch derivative? (y/n)"
read -r arch_choice

if [[ "$arch_choice" != "y" ]]; then
  echo "Please install Flatpak for your OS manually. Exiting..."
  exit 1
fi

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
  echo "Flatpak is not installed. Installing Flatpak..."
  sudo pacman -S --noconfirm flatpak
  
  echo "Flatpak has been installed."
  
  # Ask the user if they want to reboot
  echo "Do you want to reboot your system now? (y/n)"
  read -r reboot_choice
  
  if [[ "$reboot_choice" == "y" ]]; then
    echo "Rebooting..."
    reboot
  else
    echo "Please reboot your system manually to complete the installation."
    exit 0
  fi
else
  echo "Flatpak is already installed."
fi

# Proceed with Flatpak updates and installations
echo "Updating Flatpak repositories..."
flatpak update

echo "Installing Flatpaks..."

flatpak install -y flathub io.gitlab.librewolf-community
flatpak install -y flathub md.obsidian.Obsidian
flatpak install -y flathub com.vscodium.codium
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.sindresorhus.Caprine
flatpak install -y flathub net.ankiweb.Anki
flatpak install -y flathub org.bleachbit.BleachBit
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub dev.geopjr.Collision
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.warlordsoftwares.formatlab
flatpak install -y flathub io.freetubeapp.FreeTube
flatpak install -y flathub org.gimp.GIMP
flatpak install -y flathub fr.handbrake.ghb
flatpak install -y flathub io.gitlab.news_flash.NewsFlash
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub org.nickvision.tubeconverter
flatpak install -y flathub org.qbittorrent.qBittorrent
flatpak install -y flathub org.torproject.torbrowser-launcher
flatpak install -y flathub org.videolan.VLC
flatpak install -y flathub com.github.xournalpp.xournalpp
flatpak install -y flathub org.zealdocs.Zeal
flatpak install -y flathub io.github.flattool.Warehouse
flatpak install -y flathub io.gitlab.adhami3310.Converter
flatpak install -y flathub org.jousse.vincent.Pomodorolm
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub org.kicad.KiCad

echo "All Flatpaks have been installed!"