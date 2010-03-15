require 'mathn'
sum = 0
2.upto(10000) do |x|
  sqrt = Math.sqrt(x)
  next if sqrt - sqrt.to_i == 0
  a = sqrt.to_i
  b = 1
  flag = [[a,b]]
  i = 1
  while true do
    nb = x - a*a
    na = (b * (sqrt + a) / nb).to_i * nb - a*b
    temp = nb.abs.gcd b.abs
    a = na/temp
    b = nb/temp
    if flag.include? [a,b]
      break
    end
    flag.push [a, b]
    i += 1
  end
  sum += 1 if i % 2 == 1
end
p sum