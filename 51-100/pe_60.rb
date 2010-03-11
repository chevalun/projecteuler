require 'prime'
primes = []
Prime.each(10000) { |x|
  primes.push x if x != 2 && x != 5
}
ss = primes.size - 1

0.upto(ss) { |i1|
  p i1
  (i1+1).upto(ss) { |i2|
    next if !((primes[i1].to_s+primes[i2].to_s).to_i).prime? || !((primes[i2].to_s+primes[i1].to_s).to_i).prime?
    (i2+1).upto(ss) { |i3|
      next if !((primes[i1].to_s+primes[i3].to_s).to_i).prime? || !((primes[i3].to_s+primes[i1].to_s).to_i).prime? || !((primes[i2].to_s+primes[i3].to_s).to_i).prime? || !((primes[i3].to_s+primes[i2].to_s).to_i).prime?
      (i3+1).upto(ss) { |i4|
              next if !((primes[i1].to_s+primes[i4].to_s).to_i).prime? || !((primes[i4].to_s+primes[i1].to_s).to_i).prime? || !((primes[i2].to_s+primes[i4].to_s).to_i).prime? || !((primes[i4].to_s+primes[i2].to_s).to_i).prime? || !((primes[i3].to_s+primes[i4].to_s).to_i).prime? || !((primes[i4].to_s+primes[i3].to_s).to_i).prime?
              (i4+1).upto(ss) { |i5|
                next if !((primes[i1].to_s+primes[i5].to_s).to_i).prime? || !((primes[i5].to_s+primes[i1].to_s).to_i).prime? || !((primes[i2].to_s+primes[i5].to_s).to_i).prime? || !((primes[i5].to_s+primes[i2].to_s).to_i).prime? || !((primes[i3].to_s+primes[i5].to_s).to_i).prime? || !((primes[i5].to_s+primes[i3].to_s).to_i).prime? || !((primes[i4].to_s+primes[i5].to_s).to_i).prime? || !((primes[i5].to_s+primes[i4].to_s).to_i).prime?
                p primes[i1]+primes[i2]+primes[i3]+primes[i4]+primes[i5]
                exit
        }
      }
    }
  }
}