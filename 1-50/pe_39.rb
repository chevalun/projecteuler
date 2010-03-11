max = 0
for p in 121..1000 do
  s = 0
  for a in 1..p do
    for b in a..p do
      break if p-a-b <= b
      s += 1 if a*a+b*b == (p-a-b)**2
    end
  end
  max,rst = s, p if s > max
end
p rst