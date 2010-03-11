require 'prime'
sum = 0
pp = 1
d = 0
j = 1000000
for i in 1..(j*2-1) do
    if(i % 4 == 2)
      d += 2
    end
    pp = pp + d
    sum += 1 if pp.prime?
    break if (i > 1) && (i % 4 == 1) && (sum.to_f / i < 0.1)
end
p (i-1)/2+1