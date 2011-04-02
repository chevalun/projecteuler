$fact = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
def cal num
  sum = 0
  while num > 0
    sum += $fact[num % 10]
    num /= 10
  end
  return sum
end

def count num
  ans = 0
  poll = []
  while !poll.index(num) do
    poll.push num
    num = cal num
    ans += 1
  end
  return ans
end

sum = 0
for i in 1..1000000 do
  p i if i % 10000 == 0
  sum += 1 if (count i) == 60
end
p sum