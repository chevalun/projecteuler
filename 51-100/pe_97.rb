power = 7830457
rst = 1
while power > 10000
  rst = (rst * (2 ** 10000)) % (10 ** 10)
  power -= 10000
end
rst = (rst * (2 ** power) * 28433 + 1) % (10 ** 10)
p rst