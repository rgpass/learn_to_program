puts 'What\'s your first name?'
first = gets.chomp
puts 'And middle?'
middle = gets.chomp
puts 'And last?'
last = gets.chomp
puts 'Nice to meet you, ' + first + ' ' + middle + ' ' + last + '!'

puts 'What\'s your favorite number?'
favNum = gets.chomp
newFav = favNum.to_i + 1
puts 'How about ' + newFav.to_s + '? It\'s bigger and better!'