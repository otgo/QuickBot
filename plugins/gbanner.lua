local action = function(msg, matches)

if msg.from.id ~= config.admin and msg.from.id ~= config.admin2 then
	return
end

if matches[1] == "gban" then
	
	if matches[2] then
  		os.execute('echo "' ..matches[2].. '," >> ./data/gbans')
		api.sendReply(msg, "ID " ..matches[2].. " *globalmente baneado*.", true)
		bot_init(true)
	end
	
 	if not matches[2] then
		if msg.reply then
			os.execute('echo "' ..msg.reply.from.id.. '," >> ./data/gbans')
			api.kickUser(msg.chat.id, msg.reply.from.id)
			api.sendReply(msg, "ID " ..msg.reply.from.id.. " *globalmente baneado*.", true)
			bot_init(true)
		else
			api.sendMessage(msg.chat.id, "Este comando necesita respuesta")
		end
	end
end

if matches[1] == "ungban" then
	
	if matches[2] then
		os.execute('sed -i "/' ..matches[2].. '/d" ./data/gbans')
		api.sendReply(msg, "ID " ..matches[2].. " *globalmente desbaneado*.", true)
		bot_init(true)
	end
	
 	if not matches[2] then
		if msg.reply then
			os.execute('sed -i "/' ..msg.reply.from.id.. '/d" ./data/gbans')
			api.unbanChatMember(msg.chat.id, msg.reply.from.id)
			api.sendReply(msg, "ID " ..msg.reply.from.id.. " *globalmente desbaneado*.", true)
			bot_init(true)
		else
			api.sendMessage(msg.chat.id, "Este comando necesita respuesta")
		end
	end
end

if matches[1] == "isgban" then
	if matches[2] then
		local grep = io.popen("grep "..matches[2].. " ./data/gbans")
		local in_list = grep:read("*a")
		if list == "" then
		api.sendMessage(msg.chat.id, "_No se encontraron coincidencias_", true)
		else
			api.sendMessage(msg.chat.id, "*Demasiado seguro*\nSe encontraron las siguientes coincidencias:\n\n_"..list.."_", true)
			end
	end
	
 	if not matches[2] then
		if msg.reply then
			local grep = io.popen("grep "..msg.reply.from.id.. " ./data/gbans")
		local list = grep:read("*a")
		if list == "" then
		api.sendMessage(msg.chat.id, "_No_", true)
		else
	        api.sendMessage(msg.chat.id, "La ID "..msg.reply.from.id.." está *globalmente baneada*", true)
		end
		end
		end
end


end

return {
	action = action,
	triggers = {
				'^/(gban)$',
				'^/(gban) (%d+)$',
				'^/(ungban)$',
				'^/(ungban) (%d+)$',
				'^/(isgban)$',
				'^/(isgban) (%d+)$'
				}
		}
