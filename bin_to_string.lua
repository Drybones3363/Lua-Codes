local bin = [[0110011001101100011000010110011101111011011010000110010101101100011011000011000001011111011101000110100000110011011100100011001101011111011101110011000001101100011100100110010001111101]]

function Bin_to_Str(bin)
  local n = {}
  bin = bin:reverse()
  for i=1,bin:len() do
    if not n[math.floor((i-1)/8)+1] then n[math.floor((i-1)/8)+1] = 0 end
    n[math.floor((i-1)/8)+1] = n[math.floor((i-1)/8)+1] + tonumber(bin:sub(i,i))*2^((i-1)%8)
  end

  local str = ''
  for i=1,#n do
    str = str..string.char(n[i])
  end
  return str:reverse()
end

print(Bin_to_Str(bin))
