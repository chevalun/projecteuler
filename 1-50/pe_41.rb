require 'prime'
$flag = false
$used = Array.new(10, false)
def perm x
  return if $flag
  if x > 10**6
    if x.prime?
      p x
      $flag = true
    end
    return
  end
  7.downto(1) do |i|
    if !$used[i]
      $used[i] = true
      perm x*10+i
      $used[i] = false
    end
  end
end
perm 0
