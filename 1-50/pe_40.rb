len = i = 0
product = 1
goal = [1,10,100,1000,10000,100000,1000000]
while len < 1000000 do
  i += 1
  s = i.to_s
  goal.each do |x|
    product *= s[x-len-1, 1].to_i if (len < x) && (len + s.size >= x)
  end
  len += s.size
end
p product