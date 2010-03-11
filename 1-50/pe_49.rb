require 'prime'
primes = []
digits = []
count = 0

for i in 1001..9997 do
  if i.prime?
    primes[count] = i
    digits[count]  = i.to_s.split(//).sort
    count += 1
  end
end

for i in 0..count-1
  for j in i+1..count-1
    temp = (primes[j] << 1) - primes[i]
    break if temp > 9997
    next if (digits[i] != digits[j]) || !temp.prime?
    p primes[i], primes[j], temp,"\n" if temp.to_s.split(//).sort == digits[i]
  end
end