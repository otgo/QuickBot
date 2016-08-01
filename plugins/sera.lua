local triggers = {
	'^/(sera) (.*)$'
}
local action = function(msg, blocks, ln)
	
if blocks[1] == 'sera' then
	math.randomseed(os.time());
	end
  num = math.random(0,6);
  if num == 0 then
			api.sendReply(msg, '🔰💬 Si')
  elseif num == 1 then
			api.sendReply(msg, '🔰💬 Muy probablemente')
  elseif num == 2 then
			api.sendReply(msg, '🔰💬 No lo se')
  elseif num == 3 then
			api.sendReply(msg, '🔰💬 Probablemente')
elseif num == 4 then
			api.sendReply(msg, '🔰💬 No')
elseif num == 5 then
			api.sendReply(msg, '🔰💬 Definitivamente no')
elseif num == 6 then
			api.sendReply(msg, '🔰💬 Definitivamente si')
 
end 
end 
    
 return {
	action = action,
	triggers = triggers
}
