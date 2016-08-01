local action = function(msg, matches)

if msg.from.id ~= config.admin2 and msg.from.id ~= config.admin then
	return
end

if matches[1] == "gban" then
	if msg.reply then
		os.execute('echo "' ..msg.reply.from.id.. '," >> ./data/gbans')
		api.sendReply(msg, "ID " ..msg.reply.from.id.. " *globalmente baneado*.", true)
		bot_init(true)
	else
		api.sendMessage(msg.chat.id, "Este comando necesita respuesta")
	end
end

if matches[1] == "ungban" then
	if msg.reply then
		os.execute('sed -i "/' ..msg.reply.from.id.. '/d" ./data/gbans')
		api.sendReply(msg, "ID " ..msg.reply.from.id.. " *globalmente desbaneado*.", true)
		bot_init(true)
	else
		api.sendMessage(msg.chat.id, "Este comando necesita respuesta")
	end
end

end

return {
	action = action,
	triggers = {
				'/(gban)',
				'/(ungban)'
				}
		}

