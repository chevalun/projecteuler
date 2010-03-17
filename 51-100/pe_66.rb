require 'mathn'
max = 0
pos = 0
2.upto(1000) do |x|
  sqrt = Math.sqrt(x)
  next if sqrt - sqrt.to_i == 0
  a = sqrt.to_i
  b = 1
  flag = [[a,b]]
  coff = []
  i = 1
  while true do
    nb = x - a*a
    na = (b * (sqrt + a) / nb).to_i * nb - a*b
    temp = nb.abs.gcd b.abs
    coff.push ((sqrt + a)*b /nb).to_i
    a = na/temp
    b = nb/temp
    if flag.include? [a,b]
      break
    end
    flag.push [a, b]
    i += 1
  end
  rst = Rational(0,1)
  if i % 2 == 0
    coff.reverse.each_with_index do |x, index|
      rst = 1/(rst + x) if index != 0
    end
  else
    coff = (coff.reverse * 2).reverse
    coff.reverse.each_with_index do |x, index|
      rst = 1/(rst + x) if index != 0
    end
  end
  p rst + sqrt.to_i
  if (rst + sqrt.to_i).numerator > max
    pos, max = x, (rst + sqrt.to_i).numerator
  end
end
p max, pos