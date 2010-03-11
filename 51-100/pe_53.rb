c = Array.new(102){Array.new(102,0)}
for i in 1..101 do
  c[i][0] = 1
end
rst = 0
for i in 1..101 do
  for j in 1..i do
    c[i][j] = c[i-1][j] + c[i-1][j-1]
    rst += 1 if c[i][j] > 1000000
  end
end
p c[2]