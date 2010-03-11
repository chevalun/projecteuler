require 'prime'
max = n = 0
2.upto(1000000) do |x|
  p x if x % 10000 == 0
  temp = x.prime_division
  tot = 1
  temp.each do |y|
    tot *= (y[0]-1) * (y[0] ** (y[1]-1))
  end
  n, max = x, x.to_f/tot if x.to_f/tot > max
end
p max, n