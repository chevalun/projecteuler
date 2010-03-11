a = [0, 1]
def collatz (num, a)
  if a[num] != nil
    return a[num] 
  end
  if num > 100000
    if num % 2 == 1
      return 1+collatz(3*num+1, a)
    else
      return 1+collatz(num/2, a)
    end
  end
  if num % 2 == 1
    return a[num] = 1+collatz(3*num+1, a)
  else
    return a[num] = 1+collatz(num/2, a)
  end
end

max = 0
num = 0
for i in 1..1000000 do
  if i % 2 == 0
    next
  end
  if collatz(i, a) > max
    max = collatz(i, a)
    num = i
  end
end
p num