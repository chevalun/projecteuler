require 'rational'
product = 1.to_r
for i in 10..99
  for j in i+1..99
    s1 = i.to_s
    s2 = j.to_s
#    product *= j if (s1[0] == s2[0]) && (s2[1] != "0") && (i.to_f/j == (i%10).to_f/(j%10))
#    product *= j if (s1[0] == s2[1]) && (s2[0] != "0") && (i.to_f/j == (i%10).to_f/(j/10))
     product *= Rational(i,j) if (s1[1] == s2[0]) && (s2[1] != "0") && (i.to_f/j == (i/10).to_f/(j%10))
#    product *= j if (s1[1] == s2[1]) && (s2[0] != "0") && (i.to_f/j == (i/10).to_f/(j/10)) && (s1[1] != )
    end
end
p product