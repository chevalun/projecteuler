require "rational"
i = 1
a = Rational(3,2)
s = 0
while i < 1000
  a = 1 + 1/(1+a)
  s += 1 if (a.denominator).to_s.size < (a.numerator).to_s.size
  i += 1
end
p s