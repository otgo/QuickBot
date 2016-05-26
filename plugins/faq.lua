local function action(msg, blocks, ln)
    
    if not(msg.chat.type == 'private') then return end
    
    local questions = {
        '¿Puedo eliminar mensajes de usuarios con el bot?',
        '¿Puedo expulsar a un usuario que escriba cierta palabra?',
        '¿Cómo puedo darle administración al bot en mi grupo?',
        '¿Por qué tengo errores del cierre de texto? (markdown)',
        '¿Por qué no puedo dar baneo global?',
        '¿Por qué a veces los comandos por nombre de usuario son tan lentos?',
        '¿Como puedo contactarte por privado?',
        '¿Por qué intento expulsar/banear/advertir a un usuario y no me deja?',
        '¿Cómo puedo reportar un bug?',
        '¿En cuantos grupos puede administrar el bot?',
        '¿Que más puede hacer el administrador del bot?',
    }
    
    local answer = {
        'Por el momento no se puede, ya que API Telegram no incluye la función.',
        'No, por el momento el bot no incluye esa función, lo siento.',
        'Debe tener su cliente de Telegram a la última versión actualizada y en añadir administrador buscar el usuario del bot.',
        'Eso significa que usted no ha hecho correctamente el cierre del texto, ya sea usando * o _ Debe cerrar el texto con el mismo simbolo.',
        'El bot es totalmente público, así que los usuarios que agregan al bot a su grupo no pueden dar baneo global, solamente si el administrador del bot lo consideraría necesario.',
        'En veces, no genera el kick ya que el bot no lo ha agregado en each message.',
        'Por seguridad tuya, deberías usar el comando "_/c" y a continuación tu pregunta y/o duda que tengas, así, no podrás ser reportado como spam',
        'Este sucede porque en veces se le contesta a otro bot y el mensaje no puede ser recibido por el bot, quizá en un futuro pueda ser reparado eso.',
        'Puedes reportarlo con /c <reporte> o bien, enviar pruebas con imagenes contestandolas con "_/c_".',
        'Podría ser que no tenga límite de administración.',
        'No hay más privilegios especiales, excepto darle ban global a ciertos usuarios y bloquear a cierto usuario para que no pueda hacer uso del bot.',
    }
    
    local text
    
    if not blocks[2] then
        local i = 1
        text = '*Preguntas sugeridas*\nEscribe `/faq [número de pregunta]` para obtener la respuesta.\n\n'
        for k,v in pairs(questions) do
            text = text..'*'..i..'* - `'..v..'`\n'
            i = i + 1
        end
        api.sendMessage(msg.chat.id, text, true)
    end
    if blocks[2] then
        local n = tonumber(blocks[2])
        if n > #answer or n == 0 then
            api.sendReply(msg, '_Número inválido_', true)
        else
            text = '*'..questions[n]..'*\n\n'..answer[n]
            api.sendReply(msg, text, true)
        end
    end
end
    
return {
    action = action,
    triggers = {
        '^/(faq)$',
        '^/(faq) (%d%d?)',
    }
}
