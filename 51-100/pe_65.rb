require 'rational'
x = Rational(0, 1)
i = 99
while true do
  if i % 3 == 2
    temp = (i/3 + 1) * 2
  else
    temp = 1
  end
  x = 1/(x+temp)
  i -= 1
  break if i == 0
end
sum = 0
p (2+x).numerator.to_s.split(//).each {|x| sum += x.to_i}
p sum