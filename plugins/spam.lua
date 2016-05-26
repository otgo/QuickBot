local action = function(msg, blocks)
user = msg.from.username
id = msg.from.id
api.kickUser(msg.chat.id, msg.from.id)
api.sendMessage(msg.chat.id, 'El usuario @' ..user.. ' (' ..id.. ') *ha sido expulsado por hacer spam* ', true)
end

return {
   action = action,
   triggers = {
            "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]",
            "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]",
         }
     }
