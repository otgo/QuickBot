local triggers = {
	'^[Mm]ata a (.*)$',
        '^[Qq]uicksilver mata a (.*)$'
}

local action = function(msg, matches, blocks, ln)

        api.sendMessage(msg.chat.id, '_Llamando a Terminator..._\n*Matando a * _' ..matches[1]..'_', true)
	api.sendVideo(msg.chat.id, './gif/giphy.mp4')
 

    end
    
 return {
	action = action,
	triggers = triggers
}