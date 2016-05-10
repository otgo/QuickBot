local triggers = {
	'^/(beta)$'
}

local action = function(msg, blocks, ln)

if blocks[1] == 'beta' then
    	api.sendDocument(msg.chat.id, './TelegramBeta790.apk')
    end
    end
    
 return {
	action = action,
	triggers = triggers
}
