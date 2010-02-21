sum = 0
for i in 1..999 do
  sum += i if (i%3 == 0) || (i%5 == 0)
end
p sum