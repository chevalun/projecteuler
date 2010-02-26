a = []
for i in 2..100
  for j in 2..100
    a.push(i ** j)
  end
end
p a.uniq.size