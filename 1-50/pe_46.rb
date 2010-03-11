require 'prime'
s = 33
while true do
  s += 2
  next if s.prime?
  flag = false
  Prime.each(s) {|x| break if flag = Math.sqrt((s-x)/2) == Math.sqrt((s-x)/2).to_i}
  break if !flag
end
p s