local action = function(msg, matches, blocks, ln)
 if msg.reply then
  if is_owners(msg) then
   api.editMessageText(msg.chat.id, msg.reply.message_id, matches[1])
else 
	api.sendReply(msg, '🚫 *no tienes poderes para hacer eso :)*', true)
  end
 end
end
    
return {
 action = action,
 triggers = {
  '^[!#/]edit (.*)',
 }
}


--by @xxdamage
