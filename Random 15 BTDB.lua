math.randomseed(1337)

local b = 2

local t = {}
local t2 = {58,9,35,21,54,12,32,51,10,5,23,53,20,1,15,24,28,67,55,26}

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
math.randomseed(os.time())
print(math.random(15),getnum(true))

end


--to help me select 15 random cards on BTDB
