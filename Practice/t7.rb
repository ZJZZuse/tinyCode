

n = 10**6

s = 0

i = 1

def gainSigleEle n

  1.0/(n*4-3) - 1.0/(n*4-1)

end

while i < n

  s += gainSigleEle i

  i += 1
  
end

puts s * 4

