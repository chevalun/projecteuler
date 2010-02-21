# http://www.wolframalpha.com/input/?i=600851475143

n = 600851475143
while n > 1 do
  for i in 2..n do
    if n % i == 0
      n /= i
      p i
      break
    end
  end
end
