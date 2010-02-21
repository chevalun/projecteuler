require 'date'
s = Date.civil(1901,1,1)
t = Date.civil(2000,12,31)
sum = 0
while s < t
  sum += 1 if s.wday == 0
  s >>= 1
end
p sum