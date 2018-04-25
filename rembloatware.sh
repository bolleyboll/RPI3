echo "Removing Useless Packages..."

sudo apt-get purge wolfram-engine libreoffice* geany scratch* scratch2 greenfoot nodered claws-mail claws-mail-i18n minecraft-pi python-pygame -y

echo "Removing PyGames"
sudo rm -R /home/pi/python_games
rm -rf ~/python_games

sudo apt-get clean
sudo apt-get autoremove -y

echo "Installing gedit"
sudo apt-get install gedit
df -h
sudo reboot
