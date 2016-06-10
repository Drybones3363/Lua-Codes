local scores = {
   Reading = 36,
   English = 36,
   Science = 36,
   Math = 36
}

local Total_Score,r = 0,0

for i,k in pairs (scores) do
   Total_Score = Total_Score + .25*k
   r = r + 1
end

Total_Score = math.floor(Total_Score+.5)

if r ~= 4 then
   print("You didn't take the ACT, there's 4 sections!!! IDK what the heck kind of test you took...")
else
   print(Total_Score)
end
