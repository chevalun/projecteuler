s = 0
for i in 2..999999
  temp = i
  sum = 0
  while temp != 0 do
    sum += (temp % 10) ** 5
    temp /= 10
  end
  s += i if sum == i
end
p s