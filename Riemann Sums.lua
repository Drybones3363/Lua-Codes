local t = {2,4,3,3}

local intlen = 2

local l,r,m,trap = 0,0,0,0

for i=1,4,1 do
l = l + t[i]*intlen
r = r + t[i+1]*intlen
trap = trap + (t[i]+t[i+1])*.5*intlen
end

print(l,r,m,trap)

--helped me with math homework one day ;)
