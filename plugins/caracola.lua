local triggers = {
	'^/(caracolamagica) (.*)$'
}

local action = function(msg, blocks, ln)
	
if blocks[1] == 'caracolamagica' then
	math.randomseed(os.time());
	end
  num = math.random(0,3);
  if num == 0 then
   api.sendPhoto(msg.chat.id, './caracola/si.jpg')
  elseif num == 1 then
   api.sendPhoto(msg.chat.id, './caracola/no.jpg')
  elseif num == 2 then
   api.sendPhoto(msg.chat.id, './caracola/probablemente.jpg')
  elseif num == 3 then
   api.sendPhoto(msg.chat.id, './caracola/jamas.jpg')
 
    end
    end
    
 return {
	action = action,
	triggers = triggers
}