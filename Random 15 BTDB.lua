math.randomseed(3) --1337,3

local b = 2

local t = {}
local t2 = {17,30,34,22,11,43,65,68,18,1,35,14,47,71,64,20,4,28,5,66}

local function int(k,q)
for e,r in pairs (q and t2 or t) do
if r == k then return true end
end
end

local s = ''

local function getnum(q)
local n repeat n = math.random(75) until not int(n,q) return n
end

if b == 1 then
for i=1,20 do
local n = getnum()
table.insert(t,n)
s = s..tostring(n)..","
end

print(s)

else

local function get_rand_slot()
local n
repeat n = math.random(15) until not int(n)
table.insert(t,n)
return n
end

math.randomseed(os.time())
for i=1,5 do
print(get_rand_slot(),getnum(true))
end

end


