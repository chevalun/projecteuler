require 'prime'
i = 647
while true do
  break if (i.prime_division.size == 4) && ((i+1).prime_division.size == 4) && ((i+2).prime_division.size == 4) && ((i+3).prime_division.size == 4)
  i += 1
end
p i