$l = Array.new(21){Array.new(21,-1)}
# .....................................
def dp x, y
  return 0 if ((x < 0) || (y < 0))
  return 1 if ((x == 0) || (y == 0))
  if $l[x][y] == -1
    return $l[x][y] = dp(x-1,y)+dp(x,y-1)
  else  
    return $l[x][y]
  end
end

p dp(20, 20)
