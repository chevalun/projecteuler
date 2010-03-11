require "prime"
Prime.each(1000000) do |x| 
  next if x < 100000
  p x
  for i in 0..4 do
    if (x.to_s[0,4].count(x.to_s[i,1])) == 2
      c = 0
      for j in '0'..'9' do
        c += 1 if x.to_s.tr(x.to_s[i], j).to_i > 100000 && x.to_s.tr(x.to_s[i], j).to_i.prime?
      end
      if c >= 8
        p x
        exit
      end
    end
  end
end