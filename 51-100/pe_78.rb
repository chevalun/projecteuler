part = Array.new(100000, 0)
part[1] = 1
2.upto(99999) do |x|
  i = 1
  flag = 1
  while true do
    temp = i*(3*i-1)/2
    break if temp >= x
    part[x] = part[x] + flag*part[x - temp]
    temp = -i*(3*(-i)-1)/2
    break if temp >= x
    part[x] = part[x] + flag*part[x - temp]
    i+=1
    flag *=-1
  end
  part[x] %= 1000000
  p x-1 if part[x] == 0
end