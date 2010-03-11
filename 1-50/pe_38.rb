9999.downto(9183) do |x|
  if (x.to_s + (x*2).to_s).split(//).sort == ["1","2","3","4","5","6","7","8","9"]
    p x.to_s + (x*2).to_s
    break
  end
end