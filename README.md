QuickBot
-------------------------
Bot de telegram usando API conexiones.

Más información en la [API de Telegram](https://core.telegram.org/bots/api)

Necesitas asignar tu configuración en config.lua, tanto APIKEY como ID de administrador.
Canal u otras opciones son opcionales. Cualquier falla o recomendación ingresala al grupo de [soporte](http://telegram.me/equipoQuickSilver)

----------------------------

Clonar repositorio:

```bash
# Clonar QuickBot
git clone https://github.com/jarriztg/QuickBot.git
```
```bash
# mover a directorio y cambiar permisos de arranque
cd QuickBot && chmod +x run.sh && chmod +x dependences.sh
```
Instalar QuickBot: 

```bash
./run.sh install
```

Más funciones del bash:

```bash
# Iniciar una sesión normal
./run.sh

# Arrancar QuickBot en screen, siempre arrancando.
./run.sh screen

# Detener última sesión de QuickBot en screen
./run.sh stop

```




Envia tus pullrequest para mejorar el código.



Contacta conmigo
--------------------
[![https://telegram.me/jarriz](https://img.shields.io/badge/Telegram-%40Jarriz-green.svg)](https://telegram.me/jarriz)


##Comandos
Comandos disponibles del bot:

###Para todos
>/ping | envia por pv un mensaje diciendo que el bot está funcionando.
>
>/help | muestra la ayuda del bot (solamente en privado)
>
>/dasboard | envia por privado un menú de los ajustes del grupo (rules/about/modlist/settings/extra etc)
>
>/info | muestra la insfirmación del bot.
>
>/about  | muestra la descripción del grupo.
>
>/rules | muestra las reglas del grupo.
>
>/modlist | muestra la lista de los moderadores del grupo.
>
>/tell | muestra la información básica de los usuarios.
>
>/italic [texto] | el bot repetirá el texto en cursivas.
>
>/bold [texto] | el bot repetirá el texto en negritas.

###Moderadores
>/kick [respuesta|alias] | expulsa a un usuario (pero aún podá unirse)
>
>/ban [respuesta|alias] | banea a un usuario (así ya no podrá unirse)
>
>/unban [respuesta|alias] | desbanea a un usuario
>
>/menu | envía un menú por pv para configurar los ajustes del grupo
>
>/flood [número] | cambia el número de mensajes del anti-flood
>
>/flood [on/off] | apaga o prende el anti-flood
>
>/flood [kick/ban] | cambia la acción por si un usuario está haciendo flood
>
>/lang | muestra los lenguajes, sólo disponible español ahora
>
>/lang [es] | cambia los lenguajes, sólo disponible español ahora
>
>/media kick [image|audio|video|sticker|voice|contact|file] | el usuario expulsará si asignas un tipo de multimedia
>
>/media ban [image|audio|video|sticker|voice|contact|file] | el usuario baneará si asignas un tipo de multimedia
>
>/madia allow [image|audio|video|sticker|voice|contact|file] | permitirá de nuevo la multimedia asignada
>
>/media | muestra la configuración actual de la multimedia
>
>/media list | muestra el tipo de multimedia que puedes manejar
>
>/warn [respuesta] | advierte a un usuario contestandole y si pasa el número máximo dará kick/ban
>
>/warn [kick/ban] | cambia la acción si pasan el número máximo de advertencias
>
>/warnmax [número] | cambia el número máximo de advertencias
>
>/getwarns [respuesta] | muestra el número de advertencias de ese usuario
>
>/nowarns [respuesta] | limpia las advertencias del usuario
>
>/settings | muestra los ajustes del grupo
>
>/disable [rules/about/modlist/extra] | hará que el comando elegido esté sólo disponible para moderadores
>
>/enable [rules/about/modlist/extra] | hará que el comando elegido esté disponible para todos
>
>/[disable/enable] welcome | apaga o prende el mensaje de bienvenida
>
>/disable [arab/rtl] | cualquiera que tenga rtl/arabe en el nombre/mensaje será expulsado
>
>/enable [arab/rtl] | hará que el rtl o arabe esté permitido
>
>/welcome [a/r/m/ar/am/rm/arm] | cambia la composición del mensaje de bienvenida (a: descripcion, r: reglas, m:moderadores)
>
>/extra [#|!comando] [respuesta del bot] | genera un comando para que el bot conteste cierta respuesta.
>
>/extra list | muestra los comandos agregados
>
>/extra del [#|!comando] | remueve un comando agregado
>
>/link | muestra el link del grupo (si está agregado)
>
>/setpoll [link/no] | configura una encuesta de @pollbot (los moderadores podrán verla con /poll). Usa no para removerla
>
>/poll | muestra la encuesta actual
>
>/setabout [descripción] | muestra la descripción del grupo
>
>/addabout [texto a agregar] | agrega una última linea en la descripción
>
>/setrules [reglas] | configura las reglas del grupo
>
>/addrules [reglas] | agrega una última linea en las reglas

###Creadores del bot
>/setlink [link/no] | cambia el link del grupo o eliminalo con 'no' (solo moderadores podrán hacerlo
>
>/promote [respuesta|alias] | promueve a usuarios
>
>/demote [respuesta|alias] | retira a un usuario de la lista de moderadores
>
>/developer | crea un nuevo desarrollador

###Desarrolladores
>/init | recarga el bot
>
>/backup | envía un backup al usuario por pv (actualmente no disponible)
>
>/stop | detiene el bot
>
>/leave [id del grupo] | el bot dejará el grupo del id asignado, en caso de que no tenga id se autoexpulsará del grupo actual.
>
>/adminmode [on/off] | permite o desactiva que el bot pueda ser agregado a otros grupos, en caso de que esté apagado, solo los creadores del bot podrán agregarlo
>
>/bc [texto] | envia un broadcast a los usuarios
>
>/bcg [texto] | envia un broadcast a los grupos
>
>/post [texto] | envia un mensaje al grupo asignado en config.lua
>
>/stats | contesta las estadisticas (mensajes, grupos, usuarios, comandos)
>
>/commands | enviará cuantas veces ha sido usado un comando
>
>/usernames | envia un archivo con todos los usuarios que han usado el bot
>
>/rediscli [consulta] [parametro] | ejecuta un comando redis y obtiene la respuesta)
>
>/movechat [id del nuevo chat] | mueve los ajustes del bot a otro grupo
>
>/redis backup | envia todos los ajustes del grupo en un archivo json
>
>/group info [id] | envia la informacion de todo el grupo
>
>/save | realiza un guardado de los ajustes del redis a fondo
>
>/reset [campo] | restablece una estadística general específica
>
>/log [nombre del log] | enviará el registro del log insertado
>
>/log del [nombre del log] | borrara el log insertado
>
>/block [respuesta/id] | bloqueará a un usuario del bot (así no podrá usarlo de nuevo)
>
>/unblock [id/respuesta] | desbloqueará a un usuario del bot (así podrá usarlo de nuevo)
>
>/isblocked [respuesta] | verifica si el usuario está bloqueado del bot
>
>/movechat [id del nuevo chat] | mueve los ajustes del bot a otro chat
>
>/group info | devuelve un lua con toda la información del grupo
>
>/redis backup | genera una copia de seguridad del redis en un archivo json
>
>/ping redis | verifica si el redis está prendido
>
>/admin | regresa los comandos del archivo admin.lua
>
>/promote [respuesta|alias] | promueve a un usuario
>
>/demote [respuesta|alias] | retira a un usuario de la lista de moderadores
* * *
