local action = function(msg, matches, ln)
	api.sendMessage(msg.chat.id, make_text ''..matches[1]..'', true)
	mystat('/say')
end

return {
	action = action,
	triggers = {
		'^/say (.*)$',
		'^/di (.*)$',
		'^/echo (.*)$',
		'^/repetir (.*)$'
	}
}
