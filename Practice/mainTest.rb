require 'thread'

n = 1

while n <= 3
  Thread.new { n += 1 }

  puts n
end