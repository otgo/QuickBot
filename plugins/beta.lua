local triggers = {
	'^/(beta)$'
}

local action = function(msg, blocks, ln)

if blocks[1] == 'beta' then
    	api.sendDocument(msg.chat.id, './TelegramBetav3.8.1(790)Uni.apk')
    end
    end
    
 return {
	action = action,
	triggers = triggers
}
