require 'rspec'
require '../Practice/PackSH'

describe 'My behaviour' do

  it 'should do something' do

    game = PackSH.new

    100.times {

        |i|
      puts "#{i + 1}:"
      game.judgeResult PackSH::PACKSH_KEY[rand(3)]
      puts
    }
    # true.should == false
  end
end