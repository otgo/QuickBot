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
    echo "return {" >> config.lua
    echo "	bot_api_key = '$apikey'," >> config.lua
    echo "	admin = $id," >> config.lua
    echo "	log_chat = -122946087," >> config.lua
    echo "	channel = '@$channel'," >> config.lua
    echo "	lang = 'languages.lua'," >> config.lua
    echo "	plugins = {" >> config.lua
    echo "		'onmessage.lua'," >> config.lua
    echo "		'all.lua'," >> config.lua
    echo "		'banhammer.lua'," >> config.lua
    echo "		'users.lua'," >> config.lua
    echo "		'help.lua'," >> config.lua
    echo "		'rules.lua'," >> config.lua
    echo "		'settings.lua'," >> config.lua
    echo "		'about.lua'," >> config.lua
    echo "		'flag.lua'," >> config.lua
    echo "		'service.lua'," >> config.lua
    echo "		'links.lua'," >> config.lua
    echo "		'warn.lua'," >> config.lua
    echo "		'extra.lua'," >> config.lua
    echo "		'setlang.lua'," >> config.lua
    echo "		'floodmanager.lua'," >> config.lua
    echo "		'mediasettings.lua'," >> config.lua
    echo "		'admin.lua'," >> config.lua
    echo "		'caracola.lua'," >> config.lua
    echo "		'say.lua'," >> config.lua
    echo "		'comprimirlink.lua'," >> config.lua
    echo "		'sendfiles.lua'," >> config.lua
    echo "		'killer.lua'," >> config.lua
    echo "		'beta.lua'," >> config.lua
    echo "		'saludador.lua'," >> config.lua
    echo "		'italic.lua'," >> config.lua
    echo "		'contact.lua'," >> config.lua
    echo "		'spam.lua'," >> config.lua
    echo "		'kickme.lua'," >> config.lua
    echo "	}," >> config.lua
    echo "	available_languages = {" >> config.lua
    echo "		'es'" >> config.lua
    echo "	}," >> config.lua
    echo "	chat_data = {" >> config.lua
    echo "		'mod'," >> config.lua
    echo "		'owner'," >> config.lua
    echo "		'settings'," >> config.lua
    echo "		'about'," >> config.lua
    echo "		'rules'," >> config.lua
    echo "		'flood'," >> config.lua
    echo "		'extra'," >> config.lua
    echo "		'reportblocked'," >> config.lua
    echo "		'media'," >> config.lua
    echo "		'banned'," >> config.lua
    echo "		'welcome'" >> config.lua
    echo "	}," >> config.lua
    echo "	api_errors = {" >> config.lua
    echo "		[101] = 'Not enough rights to kick participant', " >> config.lua
    echo "		[102] = 'USER_ADMIN_INVALID', " >> config.lua
    echo "		[103] = 'method is available for supergroup chats only', " >> config.lua
    echo "		[104] = 'Bad Request: Only creator of the group can kick admins from the group', " >> config.lua
    echo "		[105] = 'Bad Request: Need to be inviter of the user to kick it from the group', " >> config.lua
    echo "		[106] = 'USER_NOT_PARTICIPANT', " >> config.lua
    echo "		[107] = 'CHAT_ADMIN_REQUIRED', " >> config.lua
    echo "		" >> config.lua
    echo "		[110] = 'PEER_ID_INVALID', " >> config.lua
    echo "		[111] = 'Bad Request: message is not modified', " >> config.lua
    echo "		[112] = 'Bad Request: Can\'t parse message text: Can\'t find end of the entity starting at byte offset %d+', " >> config.lua
    echo "		[113] = 'Bad Request: group chat is migrated to a supergroup chat', " >> config.lua
    echo "		[114] = 'Bad Request: Message can\'t be forwarded', " >> config.lua
    echo "		[115] = 'Message text is empty', " >> config.lua
    echo "		[116] = 'message not found', " >> config.lua
    echo "		[117] = 'chat not found', " >> config.lua
    echo "		[118] = 'Message is too long', " >> config.lua
    echo "		[119] = 'User not found', " >> config.lua
    echo "		" >> config.lua
    echo "		[120] = 'Can\'t parse reply keyboard markup JSON object', " >> config.lua
    echo "		[121] = 'Field \\\"inline_keyboard\\\" of the InlineKeyboardMarkup should be an Array of Arrays', " >> config.lua
    echo "		[122] = 'Can\'t parse inline keyboard button: InlineKeyboardButton should be an Object'," >> config.lua
    echo "		[123] = 'Bad Request: Object expected as reply markup', " >> config.lua
    echo "		[124] = 'QUERY_ID_INVALID', " >> config.lua
    echo "		" >> config.lua
    echo "		[130] = 'Type of file to send mismatch', " >> config.lua
    echo "		" >> config.lua
    echo "		[403] = 'Bot was blocked by the user', " >> config.lua
    echo "		[429] = 'Too many requests: retry later', " >> config.lua
    echo "	}" >> config.lua
    echo "}" >> config.lua
    clear
  echo -e '\e[0;32mOK. Configurado!\e[0m'
  read -n1 -r -p 'A continuacion se abrirÃ¡ el launcher del bot, cualquier falla, configuralo de nuevo.'
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
	echo -e '\e[0;32m#             Bot reiniciado              #"\e[0m'
	echo -e '\e[0;32m###########################################"\e[0m'
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
	echo -e '\e[0;32m#             Bot reiniciado              #"\e[0m'
	echo -e '\e[0;32m###########################################"\e[0m'
done
fi
