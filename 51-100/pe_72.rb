require 'prime'
sum = 0
2.upto(1000000) do |x|
  p x if x % 10000 == 0
  temp = x.prime_division
  tot = 1
  temp.each do |y|
    tot *= (y[0]-1) * (y[0] ** (y[1]-1))
  end
  sum += tot
end
p sum