n = gets.to_i

condition = ( (cc = rand(2)) == 0)

puts cc

def sum n

  s = 0

  n.times{|i| s += i + 1 }

  return s
end

def factorial1 n

  s = 1

  n.times{|i| s*= i +1}

  return s

end

s = 0

if condition

  s = sum n

else

  s = factorial1 n

end

puts s

