sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start

echo "Installing..."
make -j4

sudo make install
sudo ldconfig

cd /usr/local/lib/python3.5/site-packages/
sudo mv cv2.cpython-35m-arm-linux-gnueabihf.so cv2.so
cd ~/.virtualenvs/cv/lib/python3.5/site-packages/
ln -s /usr/local/lib/python3.5/site-packages/cv2.so cv2.so

echo "Edit CONF_SWAPSIZE=100 in /etc/dphys-swapfile and Run sudo /etc/init.d/dphys-swapfile stop and sudo /etc/init.d/dphys-swapfile start"
