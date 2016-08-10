local function bash(msg, blocks)
		local action = io.popen(blocks[1])
		local read = action:read("*a")
	return read
end


local action = function(msg, blocks)
local command = "_"..bash(msg, blocks).."_"

if msg.from.id ~= config.admin and msg.from.id ~= config.admin2 then
   return
end

   api.sendMessage(msg.chat.id, command, true)
   
end

return {
        action = action,
        triggers = {
               '^/bash (.*)$'
               }
        }