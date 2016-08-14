local action = function(msg, matches, blocks, ln)
	
if not(msg.chat.type == 'private') and not is_mod(msg) then	   		
local is_not_allowed = db:hget('chat:'..msg.chat.id..':settings', 'spam') == 'disable'
 if is_not_allowed then
    local id = msg.from.id
    local name = msg.from.first_name
    if msg.from.username then
    	name = name..' @'..msg.from.username
    end
 	action_sucess = api.banUser(msg.chat.id, msg.from.id)
    if action_sucess then
    	message = api.sendMessage(msg.chat.id, name.. ' ('..id.. ') ha sido *baneado por spam*.', true)
    	print(message)
    	return msg, true
    else
    	return nil
    end
 end -- cierra script si no está permitido
end -- cierra si no es mensaje privado y no es mod
end -- cierra function/script

 return {
 	information = "Plugin original creado por @Webrom y modificado por @Jarriz",
	action = action,
	triggers = {
		"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]",
		"[Cc][Aa][Nn][Aa][Ll](.+)@(.+)",
		"[Cc][Hh][Aa][Nn][Nn][Ee][Ll](.+)@(.+)"
            	}
}
