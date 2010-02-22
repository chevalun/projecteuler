require 'prime'
max = 0
ma = mb = 0
for a in -999..999
  p a if a % 100 == 0
  for b in 2..999
    i = 0
    while (i*i+a*i+b).prime?
      i += 1
    end
    if i > max
      ma, mb = a, b
      max = i
    end
  end
end
p ma
p mb
p ma*mb