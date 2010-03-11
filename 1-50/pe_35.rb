def rot n
  return (n % 10) * (10 ** (n.to_s.size - 1)) + n / 10
end

require 'prime'
sum = 0
Prime.each(1000000) do |x|
  o = x
  flag = true
  while (x = rot(x)) != o
    if (!x.prime?)
      flag = false
      break
    end
  end
  sum += 1 if flag
end
p sum