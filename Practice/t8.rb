ss = ['a','ab','abc','abcd']

while true

  s = gets

  if s.slice(0 -2) == 'end'
    break
  end

  ss.push s

end

n = 0
ss.each{


  |ele|

  n = ele.length if ele.length > n

}

puts '*'*(n+2)
ss.each {
    |ele|

  printf("*%#{-n}s*\n", ele)

}
puts '*'*(n+2)