local bin = [[00011010]]

local n = {}
bin = bin:reverse()
for i=1,bin:len() do
  if not n[math.ceil((i-1)/8)+1] then n[math.ceil((i-1)/8)+1] = 0 end
  n[math.ceil((i-1)/8)+1] = n[math.ceil((i-1)/8)+1] + tonumber(bin:sub(i,i))*2^(i-1)
end

local str = ''
for i=1,#n do
  str = str..string.char(n[i])
end
print(str)
