
(1..12).each{
  |i|
  (1..12).each{
    |j|
    
    m = i * j
    
    print "\t #{j} * #{i} = #{m}  "
    if (j == i)
      puts
      break
    end
  }
  
}
