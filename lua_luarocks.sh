cd home
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install wls -y
sudo apt-get install libssl-dev -y
sudo apt install build-essential libreadline-dev unzip -y
sudo wget http://www.lua.org/ftp/lua-5.3.5.tar.gz
sudo tar -xvf lua-5.3.5.tar.gz
cd lua-5.3.5
sudo make linux test
sudo make install
sudo wget https://luarocks.org/releases/luarocks-3.8.0.tar.gz
sudo tar -xvf luarocks-3.8.0.tar.gz
cd luarocks-3.8.0
./configure --with-lua-include=/usr/local/include
sudo make
sudo make install
sudo rm -r lua-5.3.5
sudo rm -r luarocks-3.8.0
sudo rm -f luarocks-3.8.0.tar.gz
sudo rm -f lua-5.3.5.tar.gz
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean 
sudo apt autoremove -y
