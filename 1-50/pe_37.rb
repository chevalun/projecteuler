require 'prime'
s = 0
sum = 0
Prime.each{ |x|
  next if x < 10
  pp = x
  flag = true
  while (pp > 10) do
    pp /= 10
    flag = false if (!pp.prime?)
  end
  len = x.to_s.size
  for i in 1..len-1
    flag = false if (!x.to_s[i,20].to_i.prime?)
  end
  s += 1 if flag
  sum += x if flag
  p x if flag
  break if s == 11
}
p sum