names = ['Ada', 'Belle', 'Chris']
puts names # on separate lines: 'Ada' 'Belle' 'Chris'
puts ''
puts names[0] # Ada
puts names[3] # blank -- out of range

other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'
puts other_peeps

languages = ['English', 'Norwegian', 'Ruby']
languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end
# each is an array method. The other loops are not.
# Methods like each that act like loops are called iterators.

# Any code inside a do...end is called a block
# times is an integer method
3.times do
	puts 'Hip-Hip-Hooray!'
end

foods = ['artichoke', 'brioche', 'caramel']
puts foods
puts foods.to_s
puts foods.join(', ')
puts foods.join('  :)  ') + '  8)' # artichoke  :)  brioche  :)  caramel  8)

200.times do # Blank, since it's an empty array there's nothing to do
	puts []    # compared with puts normally
end

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'
puts favorites.last
puts favorites.length
puts favorites.pop # 'whiskey on kittens' -- removes and returns last entry
puts favorites # 'raindrops on kittens'


