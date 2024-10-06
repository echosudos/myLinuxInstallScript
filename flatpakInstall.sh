#!/bin/bash

# Update Flatpak and install applications
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
