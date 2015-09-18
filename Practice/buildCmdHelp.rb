# require 'file'
#
dirT = 'cmd_help'


file = File.open("#{dirT}/main_commons.txt", "r")


file.each do
|line|

  keys = line.split ' '

  begin

    system "help #{keys[0]} > #{dirT}/#{file.lineno.to_s + '.' + keys[0]}.txt"

    if keys[0] == 'SC'
      # system "help #{keys[0]} > #{dirT}/#{file.lineno.to_s + '.' + keys[0]}.txt y"
      next
    end


  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
  end


end


file.close



