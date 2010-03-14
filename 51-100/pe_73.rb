sum = 0
1.upto(12000) do |x|
  s = (x/3.0).ceil.to_i
  t = (x/2.0).floor.to_i
  s.upto(t) do |y|
    sum += 1 if (x.gcd y) == 1
  end
end
p sum-2