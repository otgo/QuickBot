local action = function(msg, blocks)
user = msg.from.username
id = msg.from.id
api.kickChatMember(msg.chat.id, msg.from.id)
api.unbanChatMember(msg.chat.id, msg.from.id)
api.sendReply(msg, '*El usuario* @' ..user.. '* ha sido autoexpulsado*. (pero aún podrá unirse)', true)
end

return {
   action = action,
   triggers = {
            "^/kickme$"
         }
     }
