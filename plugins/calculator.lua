local action = function(msg, matches)
local handle = io.popen("expr " ..matches[1]:gsub('', ' '):gsub('*', '\\*'))
local expr = handle:read("*a")
print(result)

   
api.sendMessage(msg.chat.id, '_' ..result.. '_', true)

end 


return {
   action = action,
   triggers = {
  '^/calc (.*)$',
  }
}