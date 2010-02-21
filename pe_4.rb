ans = 0
for i in 100..999
  for j in i..999
    ans = i*j if (i*j).to_s == (i*j).to_s.reverse && i*j > ans
  end
end
p ans