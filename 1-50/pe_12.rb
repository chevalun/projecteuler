require 'prime'
def divisor n
  Prime.prime_division(n).inject(1) {|product, n| product * (n[1] + 1) }
end
i = 2
while (divisor i*(i+1)/2) < 500
  i += 1
end
p i*(i+1)/2