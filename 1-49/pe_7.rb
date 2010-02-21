# http://www.wolframalpha.com/input/?i=10001st%20prime
pp = [2]
c = 1
t = 3
while c < 10001 do
  flag = true
  for i in pp do
    if t % i == 0 
      flag = false
      break
    end
  end
  if flag
    pp.push(t)
    c += 1
  end
  t += 1
end
p pp.last