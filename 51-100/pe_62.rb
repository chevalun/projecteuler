i = 1
h = {}
while true do
  temp = (i ** 3).to_s.split(//).sort.to_s
  if h[temp] == nil
    h[temp] = [1, i**3];
  else
    h[temp][0] += 1
  end
  if h[temp][0] == 5
    p h[temp][1]
    exit
  end
  i += 1
end