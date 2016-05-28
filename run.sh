#!/bin/bash


if [ "$1" = "install" ]; then
 sudo apt-get update && sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion && wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz && tar zxpf luarocks-2.2.2.tar.gz && cd luarocks-2.2.2 && sudo ./configure && sudo make bootstrap && sudo luarocks install luasocket && sudo luarocks install luasec && sudo luarocks install redis-lua && sudo luarocks install lua-term && sudo luarocks install serpent && sudo apt-get install curl && cd .. && sudo rm -Rf luarocks-2.2.2.tar.gz && sudo rm -Rf luarocks-2.2.2 
    echo -e '\e[0;31mNOTA: al continuar eliminará el config.lua y lo volvera a hacer con los datos que ingreses\e[0m'
    echo -e '\e[0;31m      si ya haz modificado el config.lua, cierra el script. \e[0m'
    echo "Te pedirá los datos necesarios para terminar de configurar el bot, por favor, ingresalos todos."
 read -n1 -r -p 'Presiona cualquier tecla para continuar'
 sudo ./run.sh config
fi

if [ "$1" = "config" ]; then
    echo -e '\e[0;34mPor favor, ingresa tu apikey\e[0m'
    read apikey
    echo -e '\e[0;34mPor favor, ingresa tu id\e[0m'
    read id
    echo -e '\e[0;34mPor favor, ingresa tu canal sin considerar el @\e[0m'
    read channel
    sudo rm -f config.lua
    wget https://raw.githubusercontent.com/jarriztg/QuickBot/master/config.lua
    clear
    perl -pi -e "s[readapikey][$apikey]g" config.lua
    perl -pi -e "s[readowner][$id]g" config.lua
    perl -pi -e "s[readchannel][$channel]g" config.lua
    clear
  echo -e '\e[0;32mOK. Configurado!\e[0m'
  read -n1 -r -p 'A continuacion se abrirá el launcher del bot, cualquier falla, configuralo de nuevo.'
  sudo ./run.sh
fi

if [ "$1" = "kp" ]; then

	sudo screen -X -S running kill
	sudo service redis-server start
  clear
  while true
  do
	 sudo screen -S running -t screen lua bot.lua
	 echo -e '\e[0;31mCRASH DETECTADO\e[0m'
	 echo -e '\e[0;31mREINICIANDO\e[0m'
  for i in 1
  do
	 echo "$i..."
  done
	 echo -e '\e[0;32m###########################################\e[0m'
	 echo -e '\e[0;32m#             Bot reiniciado              #\e[0m'
	 echo -e '\e[0;32m###########################################\e[0m'
  done
fi


if [ "$1" = "stop" ]; then

sudo screen -X -S running kill
  
clear

echo -e '\e[0;31mBot detenido.\e[0m'

fi

if [ "$1" = "rmlogs" ]; then

sudo rm -Rf logs/
  
clear

echo -e '\e[0;31mLogs eliminados.\e[0m'

fi



if [ "$1" = "" ]; then

sudo service redis-server start
sudo screen -X -S running kill
clear

while true
do
	lua bot.lua
	echo -e '\e[0;31mCRASH DETECTADO\e[0m'
	echo -e '\e[0;31mREINICIANDO\e[0m'
for i in 1
do
	echo "$i..."
done
	echo -e '\e[0;32m###########################################\e[0m'
	echo -e '\e[0;32m#             Bot reiniciado              #\e[0m'
	echo -e '\e[0;32m###########################################\e[0m'
done
fi
