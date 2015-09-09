require 'tk'
# require_relative 'PackSH.rb'
require '../Practice/PackSH'

$game = PackSH.new

def myproc action

  $game.judgeResult action.to_sym
  $text.insert 'end',$game.tip + "\n\n"

end


action = TkVariable.new
$tip = TkVariable.new

root = TkRoot.new { title "Hello, World!" }

# label = TkLabel.new(root) do
#   text 'Hello, World!'
#   pack { padx 15; pady 15; side 'left' }
# end

$text = TkText.new(root) do
  width 50
  height 20
  borderwidth 1
  pack('padx' => 10, 'pady' => 10, 'side' => 'top')
end

tvContent = TkEntry.new(root) do
  # show '*'
  pack('padx' => 10, 'pady' => 10, 'side' => 'top')
end

tvContent.textvariable = action


TkButton.new(root) do

  text "OK"
  command (proc { myproc action.value })
  pack('padx' => 10, 'pady' => 10, 'side' => 'top')
end

Tk.mainloop