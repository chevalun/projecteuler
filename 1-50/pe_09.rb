for i in 1..1000 do
  for j in 1..1000-i-1 do
    if(i*i+j*j == (1000-i-j)*(1000-j-i))
      p i * j * (1000-i-j)
    end
  end
end