local triggers = {
	'/mensaje (.*) (.*)'
	}

local action = function(msg, blocks, ln)
chatid = blocks[1]
text = blocks[2]
   api.sendMessage(msg.chat.id, 'https://api.telegram.org/bot181668033:AAFd5f14E2pEOgYKb9gVaKJvOfftODk4ryo/sendMessage?chat_id=' ..chatid.. '&text=' ..text.. '')
end

return {
	action = action,
	triggers = triggers
}