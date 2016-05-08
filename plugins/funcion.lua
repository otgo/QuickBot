local triggers = {
		'^/(funcion) (.*)'
		}

local action = function(msg, blocks)
	--blocks de imagenes
 if blocks[1] == 'funcion' then
	api.sendMessage(msg.chat.id, 'Funcion:\n' ..blocks[2].. '\n')
	end
end
 return {
 	triggers = triggers,
 	action = action
 	}
