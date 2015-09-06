n = gets.to_i

s = 0

n.times  do|i|

  if i % 5 == 0 or i %3 == 0
  s += i + 1
  end

end

puts s

