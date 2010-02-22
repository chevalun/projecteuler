flag = []
ff = []
for i in 1..28123
  j = i/2
  sum = 0
  if i % 1000 == 0
    p i
  end
  while j >= 1
    sum += j if i % j == 0
    if sum > i
      flag[i] = true
      break
    end
    ff[i] = true if flag[j] && flag[i-j]
    j -= 1
  end
end
s = 0
for i in 1..28123
  s += i if !ff[i]
end
p s