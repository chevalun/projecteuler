# 232792560
# www.wolframalpha.com/input/?i=lcm(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
require 'rational'
rst = 1
for i in 1..20
  rst = rst.lcm i
end
p rst