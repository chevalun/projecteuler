s = 0
for i in 1..999999 do
  s += i if (i.to_s == i.to_s.reverse) && (i.to_s(2) == i.to_s(2).reverse)
end
p s