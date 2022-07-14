#!/bin/bash
#############  SCRIPT DE INTALAÇÃO LUA 5.3 E LUAROCKS 3.8.0  ############
# 									                                    
# lua_luarocks.sh -            			            
#									                                    
# Autor: TECHOPC               	
# Data Criação: 14/07/2022				                        		
#									                                                                                                   										 
# Exemplo de uso (dar permissão primeiro pro script e depois executar)  
#      sudo chmod +x lua_luarocks.sh	         		
#      sudo ./lua_luarocks.sh	         		
#							                                    
#########################################################################
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
cd ..
sudo wget https://luarocks.org/releases/luarocks-3.8.0.tar.gz
sudo tar -xvf luarocks-3.8.0.tar.gz
cd luarocks-3.8.0
./configure --with-lua-include=/usr/local/include
sudo make
sudo make install
sudo luarocks install lunajson
sudo luarocks install luasocket
cd ..
sudo rm -r lua-5.3.5
sudo rm -r luarocks-3.8.0
sudo rm -f luarocks-3.8.0.tar.gz
sudo rm -f lua-5.3.5.tar.gz
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean 
sudo apt autoremove -y
echo -e "\033[01;32;40mTHE END!\033[0m"