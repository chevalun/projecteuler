i = 144
i += 1 until ((Math.sqrt((i*2*i-i)*24+1)+1)/6).to_i == (Math.sqrt((i*2*i-i)*24+1)+1)/6
p i*2*i-i
