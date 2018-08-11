print "Type a phrase then click 'Enter': "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  print "Daffy Duckified: #{user_input}"
else
  puts "*** No modifications needed"
end
