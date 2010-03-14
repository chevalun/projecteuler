dp = Array.new(101, 0)
dp[0] = 1
for i in 1..99 do
  for j in i..100 do
    dp[j] += dp[j-i]
  end
end
p dp[100]