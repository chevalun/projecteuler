$flag = Array.new(10, true)
$f = [0,2,3,5,7,11,13,17]
$sum = 0
def perm x
  for i in 1..7 do
    return if (x >= 10 ** (i+2)) && (x.to_s[i,3].to_i % $f[i] != 0)
  end
  $sum += x if (x > 10 ** 9) && x.to_s.split(//).sort == ["0","1","2","3","4","5","6","7","8","9"]
  for i in 0..9 do
    if $flag[i]
      $flag[i] = false
      perm x*10+i
      $flag[i] = true
    end
  end
end

for i in 1..9
  perm i
end
p $sum