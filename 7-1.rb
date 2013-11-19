puts 1 > 2 # false
puts 1 < 2 # true
puts 5 <= 4 # false
puts 5 >= 4 # true
puts 1 == 1 # true
puts 2 != 1 # true
puts 'cat' < 'dog' # true -- compares first letter
# however capital letters come before lower case
puts 'bug' < 'Xander' # false
puts 'bug' < 'Xander'.downcase # true
puts 2 < 10 # true
puts '2' < '10' # false, because 1 is before 2

puts 'What\'s your name?'
name = gets.chomp
if name == 'G'
	puts 'What a lovely name!'
end