

i = 2



def isPrime n

  (2..(Math.sqrt n)).each{|i|

    if n % i == 0

    return false
    end

  }

  return true

end


while true

  puts i unless isPrime i 

  i+=1

end
