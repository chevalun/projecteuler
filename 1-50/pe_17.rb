require 'rubygems'
require 'linguistics'
Linguistics::use( :en )
sum = 0
for i in 1..1000
  sum += i.en.numwords.count "a-z"
end
p sum