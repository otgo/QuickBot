local action = function(msg, matches, blocks, ln)
	
if not(msg.chat.type == 'private') and not is_mod(msg) then	   		

    if db:hget('chat:'..msg.chat.id..':settings', 'spam') == 'disable' then
	local id = msg.from.id
    local name = msg.from.first_name
    if msg.from.username then
    	name = name..' @'..msg.from.username
    end
 				action_sucess = api.banUser(msg.chat.id, msg.from.id)
 				if action_sucess then
    	        	api.sendMessage(msg.chat.id, name.. ' ('..id.. ') ha sido *baneado por spam*.', true)
    	    		return msg, true
    	    	else
    	    		return nil
    	    	end
	    end
	   end
end

 return {
	action = action,
	triggers = {
				"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]",
           		"[Cc][Aa][Nn][Aa][Ll](.*)@(.*)",
            	"[Cc][Hh][Aa][Nn][Nn][Ee][Ll](.*)@(.*)"
            	}
}