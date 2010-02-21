sum = 0
(2**1000).to_s.each_byte {|x| sum += x.chr.to_i}
p sum