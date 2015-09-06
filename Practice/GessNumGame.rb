# MAX_NUM = 100
#
# def initGame
#
#   $max = MAX_NUM - 1
#   $min = 0
#
# end
#
# def gainGoalNum
#
#   rand(MAX_NUM)
#
# end
#
# initGame
#
# rNum = gainGoalNum
#
# gessCount = 0
#
# while (true)
#   i = gets
#
#   gessCount += 1
#
#   goalV = i.to_i
#
#   def putsRange
#
#     puts "range is #{$min}-#{$max}"
#
#   end
#
#   if (goalV > rNum)
#     puts "too bigger "
#
#     $max = goalV
#     putsRange
#   else
#
#     if (goalV == rNum)
#
#       initGame
#
#       puts 'right!', 'good job!', "your gess Count is #{gessCount}\n\n", 'start another game:'
#
#       gessCount = 0
#
#       rNum = gainGoalNum
#
#     else
#       puts "too less "
#       $min = goalV
#       putsRange
#     end
#
#   end
#
# end


class GuessNumGame

  MAX_NUM = 100

  START_GAME_S = 'Start new game,input your number :'

  BIGER_S = "too big!"

  LESSER_S = "too less!"

  OUT_OF_RANGE = "Out of range! Goal Range is "

  WIN = "Right! Good job!  your guess Count is "

  RANGE_TIP = "range is "


  @@bestGuessCount = 100

  def initialize

    initGame
    generateGoalNum

  end


  def self.startNewGame

    game = GuessNumGame.new

    puts START_GAME_S

    game
  end

  private

  def initGame
    @max = MAX_NUM - 1
    @min = 0

    @guessCount = 0
  end

  def generateGoalNum

    @goalNum = rand(MAX_NUM)

  end

  public

  #true is success


  def doGuess num

    @guessCount += 1

    if !(@min..@max).include? num
      puts OUT_OF_RANGE+" #{@min}-#{@max}"
      return false
    end

    if num == @goalNum

      @@bestGuessCount = @guessCount if @guessCount < @@bestGuessCount

      puts WIN+"#{@guessCount}" + ",best performance is #{@@bestGuessCount}"
      return true
    elsif num > @goalNum

      @max = num - 1
      puts BIGER_S
      puts RANGE_TIP+"#{@min}-#{@max}"
    elsif num < @goalNum

      @min = num +1
      puts LESSER_S
      puts RANGE_TIP+" #{@min}-#{@max}"
    end

    false
  end
end


loop do

  game = GuessNumGame.startNewGame

  loop do

    s = gets.to_i

    line = s

    break if !line or line =~ /^qQ/

    break if game.doGuess s


  end

end