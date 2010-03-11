sum = 0
p = 1
d = 0
for i in 1..(1001*2-1) do
  if(i % 4 == 2)
    d += 2
  end
  p = p + d
  sum += p
end
p sum