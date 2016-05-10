return {
    es = {
    
    bonus = {
            no_user = 'Nunca vi a ese usuario :( , por favor, respondele',
            the_group = 'el grupo',
            mods_list = 'Lista de moderadores*:\n&&&1',
            settings_header = 'Ajustes del *grupo*:\n\n*Lenguaje*: `&&&1`\n',
            reply = '*Contestale a alguien* para usar este comando, o un *usuario*',
            msg_me = '_Mensajeame primero mara ayudarte_'
        },

        pv = 'ℹ️ Este comando sólo está disponible en grupos',
        not_mod = '🚫 Para realizar o usar ésta acción requieres *permisos de desarrollador o moderador*.',
        breaks_markdown = 'ℹ️ Marca el texto con * ó _  ó `. O intenta ingresarlo diferente.',
        ping= 'ℹ️ Bot funcionando.',
        control = {
            reload = 'ℹ️ *Bot recargado!*',
            stop = 'ℹ️ *Bot detenido!*'
        },
        credits = 'ℹ️ Este bot esta basado en código Lua si encuentras cualquier falla comunicamelo en mi [Telegram](http://telegram.me/jarriz) o bien, en el grupo de soporte de [Quicksilver](http://telegram.me/equipoQuickSilver).',
        extra = {
			usage = 'Escribe despues de /extra algún titulo de comando que sea asociado al activar.\n*Por ejemplo*:\n/extra #baile vamos a bailar. Quicksilver responderá _\'vamos a bailar.\'_ cuando alguien escriba #baile',
            new_command = '🆕 *¡Nuevo comando agregado!*\n&&&1\n&&&2',
            no_commands = 'ℹ️ *¡No hay ningun comando escrito!',
            commands_list = 'Lista de *comandos agregados*:\n&&&1',
            command_deleted = '&&&1 el comando ha sido borrado.',
            command_empty = '&&&1 éste comando no existe.'
        },
        getstats = {
            redis = 'Redis actualizado',
            stats = '&&&1'
        },
        help = {
            owner = '*Comandos para el propietario*:\n'
                    ..'`/owner` (por respuesta) : crea un nuevo creador.\n'
                    ..'`/promote` (por respuesta) : promueve a un usuario en moderador.\n'
                    ..'`/demote` (por respuesta) : elimina un usuario de los propietarios o moderadores.\n'
                    ..'`/setlink [link]` : cambia el link de algún grupo.\n'
                    ..'(obviamente solo los que son moderadores en un grupo especifico podrán banear u otra cosa)\n\n',
            moderator = '*Comandos para moderadores*:\n'
                        ..'`/kick` (por respuesta) : kickea a un usuariode algún grupo (no podrá ser agregado de nuevo)\n'
                        ..'`/ban` (por respuesta) : banea a un usuario desde el grupo.\n'
                        ..'`/unban` (por respuesta) : desbanea a un usuario desde el grupo\n'
                        ..'`/kicked list` : muestra la lista de usuarios kickeados del grupo\n'
                        ..'`/flood [kick/ban]` : elige si deseas que el usuario sea baneado o expulsado por flood.\n'
                        ..'`/flood [on/off]` : apaga o activa el detector de flood.\n'
                        ..'`/flood [numero]` : cambia el máximo numero de flood (mensajes máximos)\n'
                        ..'`/setrules <reglas>` : cambia las reglas del grupo\n'
                        ..'`/addrules <regla>` : agrega sólo una linea a las reglas anteriormente creadas\n'
                        ..'`/setabout <descripción>` : cambia la descripción del grupo.\n'
                        ..'`/addabout <descripción>` : agrega sólo una línea a la descripción anteriormente creada.\n'
                        ..'En las reglas, puedes usar texto en (*negritas*) usando asteriscos ó texto en (_cursivas_) usando guiones bajos o palabras (`normales`) en las reglas y descripción.\n'
                        ..'`/[kick/ban] [images,audio,etc]` : cambia la acción si ponen imagenes audios, etc.\n'
                        ..'`/media` : Muestra el estado de baneos o expulsaciones por multimedia.\n'
                        ..'`/link` : obtiene el link del grupo, si está puesto.\n'
                        ..'`/lang` : muestra los lenguajes, español solamente disponible por ahora.\n'
                        ..'`/lang` [es] : cambia el lenguaje del bot.\n'
                        ..'`/settings` : muestra los ajustes del grupo.\n'
                        ..'`/warn [kick/ban]` : cambia la acción si el usuario se advierte al numer máximo.\n'
                        ..'`/warn` (por respuesta) : al advertir al numero máximo, es decir, le das warn y si excede el limite de advertencias será expulsado o baneado.\n'
                        ..'`/getwarns` (por respuesta) : muestra cuantas veces ha sido advertido el usuario.\n'
                        ..'`/nowarns` (por respuesta) : limpia las advertencias de un usuario.\n'
                        ..'`/warnmax` : cambia el numero máximo de advertencias antes de que el usuario sea baneado o kickeado.\n'
                        ..'`/extra` [#baile] [respuesta del bot] : crea un nuevo comando, negritas y cursivas soportadas.\n'
                        ..'`/extra list` : muestra los comandos creados.\n'
                        ..'`/extra del` [#baile] : borra algún comando creado.\n'
                        ..'`/setpoll [link|\'no\']` : guarda el link de alguna encuestra creada en pullbot.\n'
                        ..'`/poll` : muestra el link de la encuesta ingresada de pullbot (si fue ingresada, obvio haha)\n'
                        ..'`/disable [arab|rtl]` : deshabilita si algún arabe entra al grupo, lo expulsa (ya saben, tipicos arabes loquillos hablan y nadie les entiende xD)\n'
                        ..'`/enable [arab|rtl]` : activa que los arabes puedan entrar y hablar\n'
                        ..'`/disable <rules|about|modlist|extra>` : comandos solo disponibles para moderadores.\n'
                        ..'`/enable <rules|about|modlist|extra>` : comandos disponibles para todos\n'
                        ..'`/enable|/disable <welcome|report>` : apaga o enciende la bienvenida, o la mención corta con \'@admin\' aunque aún no se que haga exactamente.\n'
                        ..'`/report [on/off]` (por respuesta) : desactivas que el user pueda usar \'@admin\'\n'
                        ..'`/flag list` : muestra la lista de usuarios con mensajes flag.\n'
                        ..'`/welcome <no|r|a|ra|ma|rm|rma>` : cambia la composición del welcome.\n'
                        ..'_no_ : muestra la bienvenida normal.\n'
                        ..'_r_ : el mensaje de bienvenida tendrá las reglas integradas.\n'
                        ..'_a_ : el mensaje de bienvenida tendrá integrada la descripción.\n'
                        ..'_m_ : el mensaje de bienvenida tendrá integrada la lista de moderadores.\n'
                        ..'_ra|ar_ : el mensaje de bienvenida tendrá integrado reglas y descripción.\n'
                        ..'_ma|am_ : el mensaje de bienvenida vendrá integrado con descripción  y lista de moderadores.\n'
                        ..'_rm|mr_ : el mensaje de bienvenida vendrá integrado con reglas y lista de moderadores.\n'
                        ..'_ram|rma|mar|mra|arm|amr_ : el mensaje de bienvenido tendrá integrado reglas descripción y lista de moderadores.\n\n',
            all = '*Comandos para todos.*:\n'
                    ..'`/rules` (si están puestas) : muestra las reglas del grupo.\n'
                    ..'`/about` (si está puesta) : muestra la descripción del grupo.\n'
                    ..'`/modlist` (si hay lista) : muestra la lista de moderadores en el grupo.\n'
                    ..'`@admin` (si está activo) : por respuesta reporta el mensaje a los administradores. ; sin respuesta pero con mensaje despúes, envia una recomendación a todos los administradores.\n'
                    ..'`/tell` : el bot te responderá con información básica tuya.\n'
                    ..'`/info` : muestra información del bot.\n'
                    ..'`/help` : muestra éste mensaje.'
		            ..'\n\nSi te gusta éste bot por favor puntúalo [aqui](https://telegram.me/storebot?start=moderadores_bot)',
		 private = '¡Hola *&&&1*!\n'
                   ..'Soy Quicksilver, un _bot moderador_ para tus grupos.\n'
                   ..'\n*¿Como puedo ayudarte?*\n'
                   ..'\nPuedo banear, expulsar, advertir a cualquier usuario que tú desees.\n'
                   ..'Solo necesito que me des administración y mi trabajo empieza!\n'
                   ..'\nSi deseas usarlo, por favor consultame para promoverte.\n'
                   ..'\n_Por favor, regalános tu puntuación_ [aquí](https://telegram.me/storebot?start=moderadores_bot)',
            group_success = '_Este comando solo funciona por pv_',
           group_not_success = '_Mensajeame para ayudarte_',
            initial = 'Cambia su *permiso* para ver los comandos:'
        },
        links = {
            no_link = 'ℹ️ *No hay link* en este grupo, por favor, pideselo al creador.',
            link = '[&&&1](&&&2)',
            link_invalid = 'ℹ️ Este link, *no es valido!*',
            link_updated = 'ℹ️ Link actualizado \n*Este es el link*: [&&&1](&&&2)',
            link_setted = 'ℹ️ Link configurado.\n*Este es el link*: [&&&1](&&&2)',
            link_usetted = '*Primero configura el link*',
            poll_unsetted = '*Primero crea una encuesta en pollbot*',
            poll_updated = 'ℹ️ Encuesta actualizada.\n*Vota aqui*: [&&&1](&&&2)',
            poll_setted = 'ℹ️ Encuesta configurada.\n*Vota aqui*: [&&&1](&&&2)',
            no_poll = 'ℹ️ *No hay encuestas de Pullbot* en este grupo',
            poll = '*Vota aqui*: [&&&1](&&&2)'
        },
        luarun = {
            enter_string = 'Por favor, ingresa un string para leer.',
            done = '¡Terminado!'
        },
        mod = {
            not_owner = '🚫 Para realizar esta opción requieres permisos de desarrollador.',
            reply_promote = 'ℹ️ Respondele a alguien para promoverlo.',
            reply_demote = 'ℹ️ Respondele a alguien para removerlo de la lista de developers/mods.',
            reply_owner = 'ℹ️ Respondele a alguien para promoverlo a desarrollador.',
            already_mod = 'ℹ️ *&&&1* ya es moderador de *&&&2*',
            already_owner = 'ℹ️ Este usuario ya es *desarrollador* en este grupo.',
            not_mod = 'ℹ️ *&&&1* no es moderador de *&&&2*',
            promoted = '🆙 *&&&1* ha sido promovido en *&&&2*',
            demoted = 'ℹ️ *&&&1* ha perdido sus poderes magicos.',
            new_owner = '🆙 *&&&1* es nuevo desarrollador en *&&&2*.',
            modlist = '\nℹ️ Lista de moderadores/desarrolladores de &&&1:\n&&&2'
        },
        report = {
            no_input = 'Enviame tus comentarios a mi [Telegram](http://telegram.me/jarriz)',
            sent = '*Feedback enviado*:\n\n&&&1',
            reply = 'Genera un Feedback respondiendo a un usuario.',
            reply_no_input = 'Escribe tu respuesta despúes de "/reply"',
            feedback_reply = '*Hola, esta es una respuesta desde el bot.*:\n&&&1',
            reply_sent = '*Respuesta enviada*:\n\n&&&1',
        },
        service = {
            new_group = '¡Hola a todos! \n*&&&1*, gracias por agregarme :)\nHe sido agregado a este grupo para ayudarles a cuidarlo. *¡Vamos a ello!*  :)',
            welcome = 'Hola &&&1, bienvenido a *&&&2*!',
            welcome_rls = '¡*No hay reglas*!',
            welcome_abt = 'No hay descripción en éste grupo.',
            welcome_modlist = '\n\n*Lista de moderadores*:\n',
            abt = '\n\n*Descripción*:\n',
            rls = '\n\n*Reglas*:\n',
            bot_removed = '*&&&1* datos removidos.\nGracias por usarme!\n algun dia volveremos a vernos.'
        },
        setabout = {
            no_bio = '*No hay descripción* en este grupo.',
            bio = '*Descripción del grupo:*\n&&&1',
            no_bio_add = '*No hay descripción*.\nUsa `/setabout [descripción] para crear una nueva',
            no_input_add = 'Escribe algo despúes de "/addabout"',
            added = '*Descripción agregada:*\n"&&&1"',
            no_input_set = 'Escribe algo despúes de "/setabout"',
            clean = 'Descripción limpiada.',
            new = '*Nueva descripción:*\n"&&&1"'
        },
        setrules = {
            no_rules = '¡*No hay reglas*!',
            rules = '_Reglas del grupo:_\n&&&1',
            no_rules_add = '*No hay reglas* establecidas en este grupo\nUsa /setrules [reglas] para establecer unas nuevas.',
            no_input_add = 'Escribe algo despúes de "/addrules"',
            added = '*Reglas agregadas:*\n"&&&1"',
            no_input_set = 'Por favor *escribe algo* despúes de "/setrules"',
            clean = 'Reglas limpiadas.',
            new = '*Nuevas reglas:*\n"&&&1"'
        },
        settings = {
            disable = {
                no_input = '*¿Desactivar qué?*',
                rules_already = 'ℹ️ El comando `/rules` ya estaba disponible sólo para *moderadores*.',
                rules_locked = 'ℹ️ El comando `/rules` ahora estará disponible sólo para *moderadores*.',
                about_already = 'ℹ️ EL comando `/about` ya estaba disponible sólo para *moderadores*.',
                about_locked = 'ℹ️ EL comando `/about` ahora estará disponible sólo para *moderadores*.',
                welcome_already = 'ℹ️ EL mensaje de bienvenida ya estaba *oculto*.',
                welcome_locked = 'ℹ️ El mensaje de bienvenida ahora estará *oculto*.',
                modlist_already = 'ℹ️ El comando `/modlist` ya estaba disponible sólo para *moderadores*.',
                modlist_locked = 'ℹ️ El comando `/modlist` ahora estará disponible sólo para *moderadores*.',
                flag_already = 'ℹ️ El comando `/flag` ya estaba disponible sólo para *moderadores*.',
                flag_locked = 'ℹ️ El comando `/flag` ahora estará disponible sólo para *moderadores*.',
                extra_already = 'ℹ️ El comando #extra ya estaba disponible sólo para *moderadores*.',
                extra_locked = 'ℹ️ El comando #extra ahora estará disponible sólo para *moderadores*.',
                rtl_already = 'ℹ️ El RTL ya *no estaba permitido*.',
                rtl_locked = 'ℹ️ El RTL ahora *no estará permitido*.',
                arab_already = 'ℹ️ El árabe ya *no estaba permitido*.',
                flood_already = 'ℹ️ El anti-flood ya *no estaba permitido*.',
                flood_unlocked = 'ℹ️ El anti-flood ahora *estará permitido*.',
                arab_locked = 'ℹ️ El árabe ahora *no estará permitido*.',
                report_already = 'ℹ️ El comando @admin ya *no estaba permitido*.',
                report_locked = 'ℹ️ El comando @admin ahora *no está permitido*.',
                wrong_input = 'ℹ️ Argumento no disponible.\nUsa `/disable [rules|about|welcome|modlist|report|extra|rtl|arab]` para *desactivar* algo.',
            },
            enable = {
                no_input = '¿Activar qué?',
                rules_already = 'ℹ️ El comando `/rules` ya estaba disponible para *todos*.',
                rules_unlocked = 'ℹ️ El comando `/rules` ahora estará disponible para *todos*.',
                about_already = 'ℹ️ El comando `/about` ya estaba disponible para *todos*.',
                about_unlocked = 'ℹ️ El comando `/about ahora estará disponible para *todos*.',
                welcome_already = 'ℹ️ EL mensaje de bienvenida ya estaba *visible*.',
                welcome_unlocked = 'ℹ️ El mensaje de bienvenida ahora estará *visible*.',
                modlist_already = 'ℹ️ El comando `/modlist` ya estaba disponible para *todos*.',
                modlist_unlocked = 'ℹ️ El comando `/modlist` ahora estará disponible para *todos*.',
                flag_already = 'ℹ️ El comando `/flag` ya estaba disponible para *todos*.',
                flag_unlocked = 'ℹ️ El comando `/flag` ahora estará disponible para *todos*.',
                extra_already = 'ℹ️ El comando #extra ya estaba disponible para *todos*.',
                extra_unlocked = 'ℹ️ El comando #extra ahora estará disponible para *todos*.',
                rtl_already = 'ℹ️ El RTL ya *estaba permitido*.*.',
                rtl_unlocked = 'ℹ️ El RTL ahora *estará permitido*.',
                arab_already = 'ℹ️ El árabe ya *estaba permitido*.',
                arab_unlocked = 'ℹ️ El árabe ahora *estará permitido*.',
                report_already = 'ℹ️ El comando @admin ya *estaba permitido*.',
                report_unlocked = 'ℹ️ El comando @admin ahora *está permitido*.',
                wrong_input = 'ℹ️ Argumento no disponible.\nUsa `/enable [rules|about|welcome|modlist|report|extra|rtl|arab]` para *activar* algo.'
            },
            welcome = {
                no_input = 'Welcome y...?',
                a = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Descripción_',
                r = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_',
                m = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Lista de moderadores_',
                ra = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_\n_Descripción_',
                rm = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_\n_Lista de moderadores_',
                am = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Descripción_\n_Lista de moderadores_',
                ram = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_\n_Descripción_\n_Lista de moderadores_',
                no = 'ℹ️ *Ahora se mostrará solamente la bienvenida*.',
                wrong_input = 'ℹ️ Argumento no disponible.\nUsa _/welcome [no|r|a|ra|ar]_ para generar una configuración.',
                custom = 'ℹ️ *Mensaje personalizado* configurado\n\n&&&1',
                wrong_markdown = '_No hay configuración_ : Seguramente, estás marcando *mal* el texto, verifica el texto enviado.',
                
            },
            resume = {
                header = '⚙ Configuraciones actuales de *&&&1*:\n\n*Lenguaje*: `&&&2`\n',
                w_a = '*Tipo de bienvenida*: `bienvenida + descripción`\n',
                w_r = '*Tipo de bienvenida*: `bienvenida + reglas`\n',
                w_m = '*Tipo de bienvenida*: `bienbenida + lista de moderadores`\n',
                w_ra = '*Tipo de bienvenida*: `bienvenida + reglas + descripción`\n',
                w_rm = '*Tipo de bienvenida*: `bienvenida + reglas + lista de moderadores`\n',
                w_am = '*Tipo de bienvenida*: `bienvenida + descrición + lista de moderadores`\n',
                w_ram = '*Tipo de bienvenida*: `bienvenida + reglas + descripción + lista de moderadores`\n',
                w_no = '*Tipo de bienvenida*: `solamente bienvenida`\n',
                flood_info = '_Sensibilidad del flood:_ *&&&1* (_acción:_ *&&&2*)\n'
            },
            Rules = 'Reglas',
            About = 'Descripción',
            Welcome = 'Mensaje de bienvenida',
            Modlist = 'Lista de moderadores',
            Flag = 'Banderas',
            Extra = 'Extra',
            Flood = 'Anti-flood',
            Rtl = 'Rtl',
            Arab = 'Árabe',
            Report = 'Reportes'
        },
        shell = {
            no_input = 'Por favor, especifica el comando a arrancar.',
            done = '*¡Terminado!*',
            output = '```\n&&&1\n```'
        },
        tell = {
            first_name = '*Primer nombre*: &&&1\n',
            last_name = '*Apellido*: &&&1\n',
            group_name = '\n*Nombre de grupo*: &&&1\n',
            group_id = '*ID del grupo*: &&&1'
        },
        warn = {
            warn_reply = 'ℹ️ *Contesta a un usuario para darle una advertencia.*',
            changed_type = 'ℹ️ Nueva acción si se supera el número máximo de advertencias: *&&&1*',
            mod = 'ℹ️ Un moderador NO puede ser advertido. Pidele a un creador que le quite sus poderes mágicos.',
            warned_max_kick = 'ℹ️ Usuario &&&1 *expulsado*: número máximo de advertencias alcanzado.',
            warned_max_ban = 'ℹ️ Usuario &&&1 *baneado*: número máximo de advertencias alcanzado.',
            warned = '*Usuario* &&&1 *advertido.*\n_Número de advertencias_   *&&&2*\n_Máximas permitidas_   *&&&3* (*-&&&4*)',
            warnmax = 'ℹ️ _Número máximo de advertencias cambiadas_.\n*Anterior* value: &&&1\n*Nuevo* max: &&&2',
            getwarns_reply = 'ℹ️ Contestale con éste comando a un usuario para *ver* el número de sus advertencias.',
            limit_reached = 'ℹ️ Este usuario ya ha alcanzado el número máximo de advertencias (*&&&1/&&&2*)',
            limit_lower = 'ℹ️ Este usuario está bajo en el número de advertencias.\n*&&&1* advertencias limpias en un total de *&&&2* (*&&&3/&&&4*)',
            nowarn_reply = 'ℹ️ Contestale a un usuario para eliminar sus advertencias',
            nowarn = 'ℹ️ El número de advertencias de éste usuario, ha sido *reseteado*.'
        },
        setlang = {
            list = '*Lenguajes disponibles:*\n\n&&&1',
            error = 'Lenguaje *no soportado*. Usa `/lang` para ver la lista de lenguajes',
            success = '*Nuevo lenguaje seleccionado* &&&1'
        },
		banhammer = {
            kicked_header = '_Lista de usuarios expulsados_:\n\n',
            kicked_empty = 'ℹ️ *La lista de usuario expulsados está limpia*',
            kicked = 'ℹ️ &&&1 *ha sido expulsado. (pero aún podra unirse a éste grupo)*',
            banned = 'ℹ️ &&&1 *ha sido baneado.*',
            already_banned_normal = 'ℹ️ &&&1 ya *está baneado*',
            unbanned = 'ℹ️ &&&1 *ha sido desbaneado.*',
            reply = 'ℹ️ Contestale a alguien',
            globally_banned = 'ℹ️ &&&1 *ha sido globalmente baneado.*',
            not_banned = 'ℹ️ Este usuario no está baneado'
        },
        floodmanager = {
            number_invalid = '`&&&1` no es un valor válido!\n El valor debe ser *arriba* de `3` y *abajo* de `26`',
            not_changed = 'ℹ️ El número máximo es  5 segundos es el predeterminado &&&1',
            changed = 'ℹ️ El número máximo cambió de &&&1 a &&&2',
            enabled = 'ℹ️ Antiflood activado.',
            disabled = 'ℹ️ Antiflood desactivado.',
            kick = 'ℹ️ Ahora los flooders serán expulsados',
            ban = 'ℹ️ Ahora los flooders serán baneados.',
        },
        mediasettings = {
        --	warn = 'Éste tipo de multimedia *no está permitida* en este grupo.\n_La próxima vez_ serás expulsado o baneado.,
            list_header = 'ℹ️ *Aquí una lista de la multimedia que puede ser bloquada*:\n\n',
            settings_header = '*Configuración actual de la multimedia*:\n\n',
            already = 'ℹ️ Nueva configuración para (`&&&1`) ahora dará *&&&2*.',
            changed = 'ℹ️ Nueva configuración para (`&&&1`) ahora dará *&&&2*.',
            wrong_input = 'ℹ️ Entrada invalida, escribe `/media list` para ver lo que se puede bloquear. ',
        },
        preprocess = {
            flood_ban = 'ℹ️ &&&1 *baneado* por flood',
            flood_kick = 'ℹ️ &&&1 *expulsado* for flood.',
            media_kick = 'ℹ️ &&&1 *expulsado*: por enviar multimedia no permitida.',
            media_ban = 'ℹ️ &&&1 *baneado*: por enviar multinedia no permitida.',
            rtl = 'ℹ️ &&&1 *expulsado* por usar caracteres RTL.',
            arab = 'ℹ️ &&&1 *expulsafo*: árabe detectado.',
            first_warn = 'Este tipo de multimedia *no está permitido* en este chat. La siguiente vez, *&&&1*'
        },
        broadcast = {
            delivered = 'ℹ️ Broadcast entregado. Compruebe la log list del broadcast.',
            no_users = 'ℹ️ *NO* hay usuarios guardados. *sin broadcast*.',
        },
        admin = {
            no_reply = 'ℹ️ Este comando necesita ser activado por respuesta.',
            blocked = 'ℹ️ El ID &&&1 ha sido añadido a la lista negra.\n Ahora no podrá hacer uso de éste bot.',
            unblocked = 'ℹ️ El ID &&&1 ha sido removido de la lista negra.\n Ahora podrá hacer uso de éste bot.',
            already_blocked = 'ℹ️ El ID &&&1 ya está bloqueado',
            already_unblocked = 'ℹ️ El ID &&&1 ya está desbloqueado',
            bcg_no_groups = 'ℹ️ No hay ids de grupos guardados.',
            leave_id_missing = 'ℹ️ ID perdido.',
            leave_chat_leaved = '*Grupo abandonado*',
            leave_error = 'ℹ️ *Verifica el ID* podría estar mal escrito.'
            
        },
        kick_errors = {
            [101] = 'ℹ️ No soy admin.  No puedo realizar acciones.',
            [102] = 'ℹ️ No puedo expulsar o banear a un administrador.',
            [103] = 'ℹ️ No se necesita unban en un grupo normal.',
            [104] = 'ℹ️ No puedo expulsar o banear a un administrador.', --dos
            [105] = 'ℹ️ No soy admin. No puedo realizar acciones.',
            [106] = 'ℹ️ Este usuario, no es miembro de éste grupo.',
            [107] = 'ℹ️ Error desconocido al expulsar.',
            
        },
        flag = {
            no_input = 'ℹ️ Contesta a un usuario con \'@admin\' para enviar un *reporte*.',
            reported = 'ℹ️ *Reportado!*',
            no_reply = 'ℹ️ *¡Contestale a un usuario!*',
            blocked = 'ℹ️ El usuario a partir de ahora no podrá usar \'@admin\'',
            already_blocked = 'ℹ️ El usuario ya habia sido *deshabilitado* para usar \'@admin\'',
            unblocked = 'ℹ️ El usuario ahora podrá usar \'@admin\'',
            already_unblocked = 'ℹ️ El usuario ya habia sido habilitado para usar \'@admin\'',
        },
        
         all = {
            dashboard = 'Te envie un resumen de los ajustes por privado :)',
            menu = 'Te he enviado las configuraciones por privado :)',
            dashboard_first = 'Navega a travez de este mensaje para ver la informacion del grupo :)',
            menu_first = 'Toque en bloquear para *cambiar las configuraciones del grupo*, o usar ultima linea de _gestionar comportamiento del anti-flood_'
            
        },
    },
}

