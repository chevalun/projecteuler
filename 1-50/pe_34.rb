fac = [1]
for i in 1..9 do
  fac[i] = fac[i-1]*i
end
s = 0
for i in 3..2540160 do
  sum = 0 
  temp = i.to_s
  for j in 0..temp.size-1
   sum += fac[temp[j].to_i-48]
  end
  s += i if sum == i
end
p s