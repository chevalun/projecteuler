sum = 0
(1..100).inject{|pro, x| pro * x}.to_i.to_s.each_byte {|x| sum += x.chr.to_i}
p sum