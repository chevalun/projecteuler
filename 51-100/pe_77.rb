require 'prime'

obj = []
Prime.each(10000) {|x| obj.push x}
i = 10
while true do
  dp = Array.new(100000, 0)
  dp[0] = 1
  obj.each do |x|
    for j in x..i do
      dp[j] += dp[j-x]
    end
  end
  if dp[i] > 5000
    p i
    break
  end
  i += 1
end
