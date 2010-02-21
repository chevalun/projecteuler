sum = 0
a, b = 1, 2
while a < 4000000 do
  a, b = b, a + b
  if a % 2 == 0
    sum += a
  end
end
p sum