def len x
  flag = []
  n = 1
  p = 1
  while flag[n % x] == nil do
    flag[n % x] = p
    n = n * 10 % x
    p += 1
  end
  return p - flag[n % x] 
end
max = 0
pp = 0
for i in 1..999
  pp, max = i, (len i) if (len i) > max
end
p pp