sum = 0
for i in 1..1000
  sum += i ** i
end
p sum % 10 ** 10