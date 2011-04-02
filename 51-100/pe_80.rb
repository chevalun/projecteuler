class Array
  def sum
    s = 0
    self.each {|x| s += x.to_i}
    return s
  end
end

s = 0
for i in 1..100 do
  next if Math.sqrt(i) == Math.sqrt(i).to_i
  x = 1
  n = i * (10 ** 250)
  800.times do
    x =  (x + n/x) / 2
  end
  s +=  x.to_s.split(//)[0,100].sum
end
p s