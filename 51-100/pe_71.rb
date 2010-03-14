require 'rational'
min = 5.0
rst = 0
1.upto(1000000) do |x|
  temp = (x * 3/7.0).floor
  if (3/7.0 - temp.to_f / x < min) && ((temp.to_f / x - 3/7.0 < 0))
    min = 3/7.0 - temp.to_f / x 
    rst = Rational(temp, x)
  end
end
p rst