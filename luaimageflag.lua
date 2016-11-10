local im = image.load('')

--for y=0,im:get_height() do

local i = 1
local x,y = 0,0

repeat
	local col = color.new(tonumber(b:sub(i,i))/255,tonumber(b:sub(i+1,i+1))/255,tonumber(b:sub(i+2,i+2))/255)
	im:draw_pixel(x,y,col)
	x = x + 1
	if x > im:get_width() then
		x = 0
		y = y + 1
	end
until b:len() < i

im:save('')

--magicians can only solve
