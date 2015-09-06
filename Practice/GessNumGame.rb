MaxGessNum = 100

def initGame

  $max = MaxGessNum - 1
  $min = 0

end

def gainGoalNum

  rand(MaxGessNum)

end

initGame

rNum = gainGoalNum

gessCount = 0

while(true)
  i = gets

  gessCount += 1

  goalV = i.to_i
  def putsRange

    puts "range is #{$min}-#{$max}"

  end

  if(goalV > rNum)
    puts "too bigger "

    $max = goalV
    putsRange
  else

    if (goalV == rNum)

      initGame

      puts 'right!','good job!',"your gess Count is #{gessCount}\n\n",'start another game:'

      gessCount = 0

      rNum = gainGoalNum

    else
      puts "too less "
      $min = goalV
      putsRange
    end

  end

end

