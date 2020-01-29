

local function rgbToHSV(c)
	local r,g,b = c.r,c.g,c.b
	local min,max = math.min(r,g,b),math.max(r,g,b)
	local h,s,v
	local v = max
	local delta = max-min
	if max ~= 0 then
		s = delta / max
	else
		s = 0
		h = -1
		return {h = h,s = s}
	end
	if delta == 0 then
		return {h = 0,s = s,v = v}
	end
	if r == max then
		h = (g - b) / delta
	elseif g == max then
		h = 2+(b - r) / delta
	elseif b == max then
		h = 4+(r - g) / delta
	end
	h = h * 60
	if h < 0 then
		h = h + 360
	end
	return {h = h,s = s,v = v}
end

local function hsvToRGB(c)
	local i
	local r,g,b
	local h,s,v = c.h,c.s,c.v
	if s == 0 then
		r = v
		g = v
		b = v
		return Color3.new(r,g,b)
	end
	h = h / 60
	i = math.floor(h)
	local f = h - i
	local p = v*(1-s)
	local q = v*(1-s*f)
	local t = v*(1-s*(1-f))
	if i == 0 then
		r = v
		g = t
		b = p
	elseif i == 1 then
		r = q
		g = v
		b = p
	elseif i == 2 then
		r = p
		g = v
		b = t
	elseif i == 3 then
		r = p
		g = q
		b = v
	elseif i == 4 then
		r = t
		g = p
		b = v
	else
		r = v
		g = p
		b = q
	end
	return Color3.new(r,g,b)
end


local function saturatedColor(c,s)
	local hsv = rgbToHSV(c)
	print(hsv.h,hsv.s,hsv.v)
	hsv.s = hsv.s*s
	return hsvToRGB(hsv)
end


local function saturatedColor2(c,value)
	local r,g,b = c.r,c.g,c.b
	local gray = .2989*r+.587*g+.114*b
	r = -gray*value + r * (1+value)
	g = -gray*value + g * (1+value)
	b = -gray*value + b * (1+value)
	if r > 255 then
		r = 255
	elseif r < 0 then
		r = 0
	end
	if g > 255 then
		g = 255
	elseif g < 0 then
		g = 0
	end
	if b > 255 then
		b = 255
	elseif b < 0 then
		b = 0
	end
	return Color3.new(r,g,b)
end


local function printColor(c)
	print(255*c.r,255*c.g,255*c.b)
end

--150,60,70 -> 200,30,40

local c = Color3.fromRGB(150, 85, 85)
printColor(saturatedColor(c,.9))
printColor(saturatedColor(c,1.9))
printColor(saturatedColor2(c,.9))
printColor(saturatedColor2(c,1.9))


