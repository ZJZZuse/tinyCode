require 'tk'

root = TkRoot.new { title "Hello, World!" }

canvas = TkCanvas.new(root) do
  place('height' => 170, 'width' => 100,
        'x' => 10, 'y' => 10)
end

TkcArc.new(canvas, 10, 20, 30, 40,'extent' => 360)


Tk.mainloop


# class PinBall
#
#
#
# end