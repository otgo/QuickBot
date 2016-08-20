local action = function(msg, blocks)
local user = msg.from.username
local first = msg.from.first_name
local id = msg.from.id

action_success = api.kickUser(msg.chat.id, msg.from.id)
if action_success then
if user then
api.sendMessage(msg.chat.id, 'El usuario @' ..user.. ' 🆔 ' ..id.. ' *ha sido autoexpulsado*  (pero aún podrá unirse)', true)
else
api.sendMessage(msg.chat.id, 'El usuario  '..first..' (' ..id.. ') *ha sido autoexpulsado*  (pero aún podrá unirse)', true)
end
else
api.sendMessage(msg.chat.id, 'No puedo autoexpulsar porque *no soy administrador* ó el usuario es administrador', true)
end
end

return {
   action = action,
   triggers = {
		'^/kickme$'

         }
     }
