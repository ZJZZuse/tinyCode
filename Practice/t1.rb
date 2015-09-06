require "set"

name = gets



goalNams = ['Alice','Bob'].to_set

if goalNams.include?(name[0..-2])

  puts "hellow #{name[0..-2]}"

else
   puts "false"
end

puts name.length

