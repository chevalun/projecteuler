$num = Array.new(6){Array.new(100){Array.new}}
1.upto(200) do |x|
  temp = x*(x+1)/2
  $num[0][temp/100].push temp % 100 if temp < 10000 && temp >= 1000
  temp = x*x
  $num[1][temp/100].push(temp % 100) if temp < 10000 && temp >= 1000
  temp = x*(3*x-1)/2
  $num[2][temp/100].push temp % 100 if temp < 10000 && temp >= 1000
  temp = x*(2*x-1)
  $num[3][temp/100].push temp % 100 if temp < 10000 && temp >= 1000
  temp = x*(5*x-3)/2
  $num[4][temp/100].push temp % 100 if temp < 10000 && temp >= 1000
  temp = x*(3*x-2)
  $num[5][temp/100].push temp % 100 if temp < 10000 && temp >= 1000
end

$flag = [true, true, true, true, true, true]

def try step, key, arr, way
  if step == 6
    if arr[5]%100 == arr[0]/100
      p arr, arr.inject{|sum, x| sum + x}
    end
  end
  for i in 0..5 do
    if $flag[i]
      $flag[i] = false
      $num[i][key].each do |x|
        temp = Array.new(arr)
        tt = Array.new(way)
        try(step+1, x, temp.push(key*100 + x), tt.push(i))
      end
      $flag[i] = true
    end
  end
end

1.upto(200) do |x|
  temp = x*(x+1)/2
  next if temp > 10000 || temp < 1000
  for i in 0..0 do
    if $flag[i]
      $flag[i] = false
      $num[i][temp/100].each do |x|
        try(1, temp%100, [temp], [i]) 
      end
      $flag[i] = true
    end
  end
end