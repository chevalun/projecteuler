i = 1
while true do
  break if (i).to_s.split(//).sort == (2*i).to_s.split(//).sort && (2*i).to_s.split(//).sort == (3*i).to_s.split(//).sort && (3*i).to_s.split(//).sort == (4*i).to_s.split(//).sort && (4*i).to_s.split(//).sort == (5*i).to_s.split(//).sort && (5*i).to_s.split(//).sort == (6*i).to_s.split(//).sort
  i+= 1
end
p i