#写个程序打印出接下来的20个闰年。

year = Time.new.year

count = 0

def isLeapYear n
  
    if n % 4 == 0
      
      if n % 400 ==0
        
        true      
      end
      
      if n % 100 == 0
        false
      end
      
      true
      
    end
  
end

until count >= 20
  
  if isLeapYear year
    
    count += 1
    
    puts count , year
    
    
  end
  
  year += 1
end
