th = 1
a, b = 1, 2
while a.to_s.length < 1000 do
  a, b = b, a + b
  th += 1
end
p th+1