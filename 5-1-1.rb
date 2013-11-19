var1 = 2
var2 = '5'
puts var1.to_s + var2 # '25'
puts var1 + var2.to_i # 7

puts '15'.to_f # 15.0
puts '99.999'.to_f # 99.999
puts '99.999'.to_i # 99
puts ''
puts '5 is my favorite number!'.to_i # 5
puts 'Who asked you about 5 or whatever?'.to_i #0
puts 'Your momma did.'.to_f # 0
puts ''
puts 'stringy'.to_s # 'stringy'
puts 3.to_i # 3

puts 20
puts 20.to_s
puts '20'
# All print the same thing. This is because put does a to_s
# before executing.

puts gets
# Asks you to type in a string, the repeats it.

puts 'Hello there, and what\'s your name?'
name = gets.chomp # Chomp takes off any Enter characters
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'