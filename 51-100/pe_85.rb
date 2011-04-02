$dp = Array.new(100) {Array.new(100)}
def f(x, y)
  return $dp[x][y] if($dp[x][y] != nil)
  return 0 if x <=0 || y <= 0
  return 1 if x == 1 && y == 1
  return $dp[x][y] = f(x, y-1) + f(x-1, y) + x*y - f(x-1, y-1)
end
min = 10000000000
for i in 1..99
  for j in 1..99 do
    if (f(i,j) - 2000000).abs < min
      p f(i,j)
      p i, j
      min = (f(i,j) - 2000000).abs
    end
  end
end