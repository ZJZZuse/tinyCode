=begin
f
产生随机数
判定胜负
输出信息
=end

class PackSH

  TIPS = {:draw => 'draw', :com => 'lose', :cus => 'win'}

  PACKSH = {:p => :pack, :s => :scissors, :h => :hammer}

  PACKSH_KEY = %i(p s h)

  @customerScore = 0

  def initialize
    @customerScore = 0
  end

  def judgeResult action = :p

    winner = :cus

    computerAction = generateAction


    cusI = PACKSH_KEY.index action
    comI = PACKSH_KEY.index computerAction

    case (comI-cusI)
      when 1, -2
        winner = :com
        @customerScore -= 1
      when 0
        winner = :draw
      else
        @customerScore += 1
    end

    puts TIPS[winner], "your choice is #{PACKSH[action]},cpu choice is #{PACKSH[computerAction]}", "your score is #{@customerScore}"

  end

  private

  def generateAction

    n = rand (3)

    PACKSH_KEY[n]

  end


end



# game = PackSh.new
#
# while true
#
#   s = gets[0..-2]
#
#   if s == 'end'
#     break
#   end
#
#   game.judgeResult s
#
# end
