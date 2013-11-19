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

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mr. Awesome. And your name is?'
name = gets.chomp
if name == name.capitalize
	puts 'Please take a seat, ' + name + '.'
else
	puts name + '? You mean ' + name.capitalize + ', right?'
	reply = gets.chomp
	if reply.downcase == 'yes'
		puts 'Hhmph! Well, sit down.'
	else
		puts 'GET OUT!!'
	end
end

input = ''
while input != 'bye'
	puts input
	input = gets.chomp
end
puts 'Come again soon!'

while true
	input = gets.chomp
	puts input
	if input == 'bye'
		break
	end
end
puts 'Come again!'

# puts 'What\'s your name?'
# name = gets.chomp
# if name == 'Gerry'
# 	puts 'Awesome name, dude!'
# elsif name == 'Kristin'
# 	puts 'Awesome name, dude!'
# end

# DRY version of previous code
puts 'What\'s your name?'
name = gets.chomp
if name == 'Gerry' || name == 'Kristin'
	puts 'Awesome name, dude!'
end 