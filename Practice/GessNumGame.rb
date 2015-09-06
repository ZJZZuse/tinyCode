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

  NUM_RANGE = (0...MAX_NUM)

  START_GAME_S = 'Start new game,input your number :'

  BIGER_S = "too big!"

  LESSER_S = "too less!"

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

    if !NUM_RANGE.include? num
      puts "Out of range! Goal #{RANGE_S}"
      return false
    end

    if num == @guessCount
      puts "Right! Good job!  your guess Count is #{@guessCount}"
      return true
    elsif num > @guessCount

      @max = num - 1
      puts BIGER_S
      puts "range is #{@min}-#{@max}"
    elsif num < @guessCount

      @min = num +1
      puts LESSER_S
      puts "range is #{@min}-#{@max}"
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