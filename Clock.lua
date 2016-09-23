local clock = {}

function clock.new(t)
return {hour = (t-(t%100)/100),minute = t%100}
end

local start = clock.new(850)
local end = clock.new(220)

local total = (function()
local n = 60-start.minute
local sh = start.hour
sh = sh + 1
if end.hour < start.hour then
n = n + (12-sh)*60 + end.hour*60
else
n = n + (end.hour-sh)*60
end
return n
end)()

print(total)

--still wip
