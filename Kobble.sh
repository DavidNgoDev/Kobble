#!/bin/bash
echo "Kobble Script Made By DavidNgoDev"
echo "All the packages in this script is not owned by me or made by me."
echo "All credits goes to their respective owners. No copyright intended"
echo "By using this script. Anything that may go wrong, like a broken distro or lost of data will be your fault. I take no responsibility in anything that may go wrong. Please accept these terms by pressing enter."
read -p "Press [ENTER] to accept the terms and continue."
wget https://downloads.kizio.tech/packages.tar.xz -P /tmp
tar xf packages.tar.xz -C /tmp
apt-get install -y plank
apt-get install -y gebi
dpkg --configure -a
apt-get install -y libreoffice
wget https://vscode-update.azurewebsites.net/1.10.2/linux-deb-x64/stable -P /tmp
gdebi /tmp/stable
cd /root
rm .bashrc
wget https://gist.githubusercontent.com/rickdaalhuizen90/d1df7f6042494b982db559efc01d9557/raw/488d28c1b614617025b6dc9d8da1075eedb892d4/.bashrc
cd /tmp/packages
cp -R samuel-scrimshaw-389700-unsplash.jpg /root/Pictures
cp -R shifaaz-shamoon-372668-unsplash.jpg /root/Pictures
gsettings set org.gnome.desktop.background picture-uri /root/Pictrures/shifaaz-shamoon-372668-unsplash.jpg
gsettings set org.gnome.desktop.screensaver picture-uri /root/Pictrures/samuel-scrimshaw-389700-unsplash.jpg
git clone https://github.com/gusbemacbe/suru-plus.git /usr/share/icons/Suru++
gsettings set org.gnome.desktop.interface icon-theme "Suru++"
cp -R /tmp/packages/Marwaita /usr/share/themes
cp -R /tmp/packages/Marwaita\ Dark /usr/share/themes
gsettings set org.gnome.shell.extensions.user-theme name 'Marwaita'
cp -R /tmp/packages/capitaine-cursors /usr/share/icons
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors'
cp -R /tmp/packages/Sweet-Ambar-Blue /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme 'Sweet-Ambar-Blue'
cp -R /tmp/packages/macOS\ Black\ Transparency /usr/share/plank/themes
cd /root/Desktop/Kobble/Dock
cp -R /tmp/packages/launchers /root/.config/plank/dock1
wget https://atom.io/download/deb -P /root/Desktop/Kobble
dpkg -i atom-amd64.deb
sudo apt-get -f install
wget https://www.jetbrains.com/toolbox/download/download-thanks.html -P /root/Desktop/Kobble
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
wget https://download.virtualbox.org/virtualbox/6.0.0/virtualbox-6.0_6.0.0-127566~Debian~stretch_amd64.deb -P /root/Desktop/Kobble
dpkg -i virtualbox-6.0_6.0.0-127566~Debian~stretch_amd64.deb
sudo apt-get -f install
wget https://www.vmware.com/go/getworkstation-linux -P /root/Desktop/Kobble
chmod a+x VMware-Workstation-Full-15.0.2-10952284.x86_64.bundle
./VMware-Workstation-Full-15.0.2-10952284.x86_64.bundle
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb -P /root/Desktop/Kobble
dpkg -i steam_latest.deb
apt-get install vlc
sudo apt-get install curl; curl 'https://www.lilite.co/get_installer?version=ubuntu_18&packages=Inkscape&packages=Skype&packages=qBittorrent' | sudo bash
echo "Please Install JetBains Manually. The installation file is found in the Kobble directory located on your desktop."
echo "Install the required programs and remove missing icons from the dock later on"
echo "Only press [ENTER] Once it's done. Or ignore don't install. If so press enter now."
read -p "Press [ENTER] to accept and continue."
plank --preferences
rm /tmp/packages
read -p "Press [ENTER] to reboot."
reboot
