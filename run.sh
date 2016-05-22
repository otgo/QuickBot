#!/bin/bash


if [ "$1" = "install" ]; then
  sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion && wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz && tar zxpf luarocks-2.2.2.tar.gz && cd luarocks-2.2.2 && sudo ./configure && sudo make bootstrap && sudo luarocks install luasocket && sudo luarocks install luasec && sudo luarocks install redis-lua && sudo luarocks install lua-term && sudo luarocks install serpent && sudo apt-get install curl && cd .. && sudo rm -Rf luarocks-2.2.2.tar.gz && sudo rm -Rf luarocks-2.2.2 

fi

if [ "$1" = "screen" ]; then

sudo screen -X -S keepsession kill
  
clear

  sudo screen -S keepsession -t screen lua bot.lua
fi


if [ "$1" = "stop" ]; then

sudo screen -X -S keepsession kill
  
clear

echo -e '\e[0;31mSession closed.\e[0m'

fi

if [ "$1" = "rmlogs" ]; then

sudo rm -Rf logs/
  
clear

echo -e '\e[0;31mLogs deleted.\e[0m'

fi



if [ "$1" = "" ]; then

sudo service redis-server start
lua bot.lua

fi
