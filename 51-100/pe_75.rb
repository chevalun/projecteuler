num = Array.new(1500001, 0)
for m in 2..1000 do
  for n in 1..m-1 do
    if ((m % 2 == 1 && n % 2 ==0) || (m % 2 == 0 && n % 2 ==1)) && ((m.gcd n) == 1)
      s = m*m - n*n + 2*m*n + m*m + n*n
      p = 1
      while(p * s <= 1500000)
        num[p*s] += 1
        p += 1
      end
    end
  end
end
sum = 0
num.each {|x| sum += 1 if x == 1}
p sum