s = []
i = 1
def Pentagonal? x
  ((Math.sqrt(x*24+1)+1)/6).to_i == (Math.sqrt(x*24+1)+1)/6
end
while true do
  s[i] = i*(3*i-1)/2
  for j in 1..i-1 do
    if Pentagonal?(s[j] + s[i]) && Pentagonal?(s[i] - s[j])
      p s[i]-s[j]
      exit
    end
  end
  i += 1
end