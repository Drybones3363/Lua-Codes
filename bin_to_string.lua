local bin = [[010011010110111101110010011001010010000001001100011101010110000100100000010000110110111101100100011001010111001100100000011001100110111101110010001000000111100101101111011101010010000001100001011011000110110000100001]]

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
