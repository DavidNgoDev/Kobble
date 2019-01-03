#!/bin/bash
echo "Kobble Script Made By DavidNgoDev"
echo "All the packages in this script is not own by me or made by me."
echo "All credits goes to their respective owners. No copyright intended"
echo "By using this script. Anything that may go wrong, like a broken distro or lost of data will be your fault. I take no responsibility in anything that may go wrong. Please accept these terms by pressing enter."
read -p "Press [ENTER] to accept the terms and continue."
apt-get -y plank
apt-get -y gebi
dpkg --configure -a
apt-get install -y libreoffice
wget https://vscode-update.azurewebsites.net/1.10.2/linux-deb-x64/stable -P /root/Desktop/Kobble
gdebi /root/Desktop/Kobble/stable
cd /root
rm .bashrc
wget https://gist.githubusercontent.com/rickdaalhuizen90/d1df7f6042494b982db559efc01d9557/raw/488d28c1b614617025b6dc9d8da1075eedb892d4/.bashrc
cd /root/Desktop/Kobble
wget https://unsplash.com/photos/9yRO-dh3GlU/download?force=true -P /root/Desktop/Kobble/Wallpapers
cd /root/Desktop/Kobble/Wallpapers
cp -R * /root/Pictrures
cd ..
gsettings set org.gnome.desktop.background picture-uri /root/Pictrures/download?force=true
gsettings set org.gnome.desktop.screensaver picture-uri /root/Pictrures/download?force=true
git clone https://github.com/gusbemacbe/suru-plus.git /usr/share/icons/Suru++
gsettings set org.gnome.desktop.interface icon-theme "Suru++"
wget https://dl.opendesktop.org/api/files/download/id/1545691571/s/66f2559cab7eaa4583f18f317e3e1e79d12e886b07801bfe8e60bc1a734b4affa6ce8713250726c0bf662d4cd8dafa63278a490c51467d856221d2fc4f7bd0a7/t/1546500489/u//macOS Black Transparency.zip -P /root/Desktop/Kobble
unzip macOS -d /usr/share/plank/themes
wget https://dl.opendesktop.org/api/files/download/id/1540637702/s/280aab0e0e1e164c4140ca26c6b0193ae352619f09532cb47ce6efa857426028bdb45450026a3628bd5f95a32623f5d9ad79ee0e7b6925931aaf7e88f220fe5d/t/1546503340/u//Marwaita.zip -P /root/Desktop/Kobble
unzip Marwaita.zip -d /root/Desktop/Kobble/Themes
gsettings set org.gnome.shell.extensions.user-theme name 'Marwaita'
wget https://dl.opendesktop.org/api/files/download/id/1501620933/s/0a12c2829b97b7888512b82336be267dae6d2bf1c6122259ad5929057162dd3f3d08bc91f763783cd5a5cb632794c1e7d5efdbbeda51b3bd4458c8e82abb3e19/t/1546503636/u//capitaine-cursors-r2.1.tar.gz -P /root/Desktop/Kobble
tar -xvzf capitaine-cursors-r2.1.tar.gz -C /usr/share/icons
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors'
wget https://dl.opendesktop.org/api/files/download/id/1546066796/s/3cda06358d494c9006345cc0afe4dda05335371a58b6e226a9876e362ffdea33877d80927d35fa787e8602346b444f44ca4a4507dc607f591baf4d10ec33d974/t/1546504040/u//Sweet-Ambar-Blue.tar.xz -P /root/Desktop/Kobble
tar xf Sweet-Ambar-Blue.tar.xz -C /usr/share/themes
plank --preferences
cd /root/Desktop/Kobble/Dock
cp -R * /root/.config/plank/dock1/launchers
cd ..
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

