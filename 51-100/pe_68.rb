require 'permutation'

per = Permutation.new(10).each do |x|
  temp = []
  x.value.each_with_index do |t, index|
    temp[index] = t + 1
  end
  if temp[0] > 6
    break
  end
  sum = temp[0] + temp[5] + temp[6]
  if (temp[1] + temp[6] + temp[7] == sum) && (temp[2] + temp[7] + temp[8] == sum) && 
      (temp[3] + temp[8] + temp[9] == sum) && (temp[4] + temp[9] + temp[5] == sum)
    p temp if temp[0..4].min == temp[0] && temp[1..4].index(10)
  end
end