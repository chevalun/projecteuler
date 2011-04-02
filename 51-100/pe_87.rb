require 'prime'
p2 = []
p3 = []
p4 = []
max = 50000000
Prime.each do |x|
  break if (x*x > max)
  p2.push x if x*x < max
  p3.push x if x**3 < max
  p4.push x if x**4 < max
end

num = []

p2.each{|a|
  p3.each{|b|
    p4.each{|c|
      num.push a*a + b**3 + c ** 4 if a*a + b**3 + c ** 4 < max
    }
  }
}
num = num.sort
s = 0
num.each_with_index do |x, index|
  s += 1 if x != num[index-1]
end
p s