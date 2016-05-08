local action = function(msg, matches, ln)
	api.sendMessage(msg.chat.id, make_text '' ..matches[1].. '', true)
	mystat('QuicksilverDi') --save stats
end

return {
	action = action,
	triggers = {
		'^[Qq]uicksilver di (.*)$'
	}
}
