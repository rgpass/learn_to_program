puts self # main -- use this to find out what object you're in

var1 = 'stop'
puts var1.reverse # pots

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'
# This counts letters, including spaces.

# Below counts letters
puts 'First name?'
first = gets.chomp
puts 'Middle name?'
middle = gets.chomp
puts 'Last name?'
last = gets.chomp
sumLetters = first.length + middle.length + last.length
puts 'Number of letters: ' + sumLetters.to_s

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters # Important: None of these change the letters object

line_width = 50
puts(                'Old Mother Hubbard'.center(line_width))
puts(               'Sat in her cupboard'.center(line_width))
# This centers these lines based off given width

line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))