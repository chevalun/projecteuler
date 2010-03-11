max = 0
for i in 1..99
  for j in 1...99
    sum = 0
    (i**j).to_s.each_byte {|x| sum += x.chr.to_i}
    max = sum if sum > max
  end
end
p max