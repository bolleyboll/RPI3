echo "Removing Useless Packages..."

sudo apt-get update
sudo apt-get purge wolfram-engine libreoffice* geany scratch* scratch2 leafpad idle3 debian-reference-en dillo netsurf-gtk raspberrypi-artwork greenfoot nodered claws-mail claws-mail-i18n minecraft-pi python-pygame -y
#gnome-themes-standard gnome-icon-theme
echo "Removing PyGames"
sudo rm -R /home/pi/python_games
rm -rf ~/python_games

sudo apt-get clean
sudo apt-get autoremove -y

echo "Installing gedit"
sudo apt-get install gedit
df -h
sudo reboot
