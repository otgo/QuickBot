local triggers = {
	'^/give (plugins)$',
--	'^/give (api)$',
	'^/give (gbans)$',
	'^/give (config)$',
	'^/give (dump)$'
}

local action = function(msg, blocks, ln)

if msg.from.id ==  '189041244' or msg.from.id == '28358650' then
	
		return
	end

	
if blocks[1] == 'plugins' then
		local cmd = io.popen('tar -czvf /home/pluginsDBTeam.tar.gz /root/DBTeam/plugins')
		cmd:read('*all')
 	    cmd:close()
 	    api.sendDocument(msg.from.id, '/home/pluginsDBTeam.tar.gz')
 	    api.sendMessage(msg.chat.id, '*¡Plugins de Quicksilver DBTeam enviados!*\n\n _Verifica el PV del bot._', true, true)
 	    end
 	    
if blocks[1] == 'api' then
	local cmd = io.popen('sudo tar -cpf '..bot.first_name:gsub(' ', '_')..'.tar *')
    	cmd:read('*all')
    	cmd:close()
    	api.sendDocument(msg.from.id, './'..bot.first_name:gsub(' ', '_')..'.tar')
    	api.sendMessage(msg.chat.id, '¡API enviado! Verifica el PV del bot.')
    end
    
if blocks[1] == 'gbans' then
    	api.sendDocument(msg.from.id, '/root/DBTeam/data/gbans.lua')
    	api.sendMessage(msg.chat.id, '¡Gbans enviado! Verifica el PV del bot.')
    end
    
if blocks[1] == 'config' then
    	api.sendDocument(msg.from.id, '/root/DBTeam/data/config.lua')
    	api.sendMessage(msg.chat.id, '¡Config.lua enviado! Verifica el PV del bot.')
    end
    
if blocks[1] == 'dump' then
    	api.sendDocument(msg.from.id, '/var/lib/redis/dump.rdb')
    	api.sendMessage(msg.chat.id, '¡Dump enviado! Verifica el PV del bot.')
    end
    end
    
    
 return {
	action = action,
	triggers = triggers
}
