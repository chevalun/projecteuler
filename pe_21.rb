#http://www.research.att.com/~njas/sequences/table?a=63990&fmt=4
def d n
  sum = 0
  for i in 1..n/2
    sum += i if n % i == 0
  end
  return sum
end

sum = 0
for i in 1..10000
  if (d(d(i)) == i) && (d(i) != i)
    sum += i 
    p i
  end
end
p sum