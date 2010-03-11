rst = 0
for i in 1..9999
  cc = 0
  x = i
  flag = false
  while cc < 50 do
    cc += 1
    x = x + x.to_s.reverse.to_i
    if x.to_s == x.to_s.reverse
      flag = true
      break
    end
  end
  rst += 1 if !flag
end
p rst