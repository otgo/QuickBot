local action = function(msg, blocks)
user = msg.from.username
id = msg.from.id
api.kickChatMember(msg.chat.id, msg.from.id)
api.unbanChatMember(msg.chat.id, msg.from.id)
api.sendMessage(msg.chat.id, 'El usuario @' ..user.. ' (' ..id.. ') *ha sido expulsado por hacer spam* (pero aún podrá unirse)', true)
end

return {
   action = action,
   triggers = {
            "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]",
            "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]",
         }
     }
