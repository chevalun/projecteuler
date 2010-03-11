s = []
for i in 1..99
  j = i
  j += 1 until (i*j).to_s.size+i.to_s.size+j.to_s.size == 9
  while (i*j).to_s.size+i.to_s.size+j.to_s.size == 9 do
    s.push i*j if ((i*j).to_s + i.to_s + j.to_s).split(//).sort.to_s == "123456789"
    j += 1
  end
end
p s.uniq.inject{|sum, x| sum+x}