require 'prime'
primes = [0]
Prime.each(100000){|x| primes.push x}
for i in 1..primes.size-1
  primes[i] += primes[i-1]
end
len = primes.size-1
rst = 0
max = 0
for i in 1..len
  j = len
  j -= 1 until primes[j]-primes[i-1] < 1000000
  while !(primes[j]-primes[i-1]).prime?
    j -= 1
  end
  rst, max = primes[j]-primes[i-1], j-i if j - i > max
end
p rst