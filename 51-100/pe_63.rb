sum = 0
for i in 1..21 do
  sum += 9 - ((10 ** (i-1)) ** (1.0/i)).to_i
end
p sum + 1