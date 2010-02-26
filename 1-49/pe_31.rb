coins = [1, 2, 5, 10, 20, 50, 100, 200]
dp = Array.new(201, 0)
dp[0] = 1
coins.each do |x|
  for i in x..200 do
    dp[i] += dp[i - x]
  end
end
p dp[200]