# 99 Bottles of Beer on the Wall
bottles = 99
while bottles > 0
	puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer!'
	bottles -= 1
end

# Deaf Grandma
# Responds screaming if you don't scream your input
count = 0
while true
	puts 'WHAT DO YOU WANT, SONNY?'
	request = gets.chomp
	if request == 'bye'.upcase
		count += 1
		if count == 3
			break
		end
	elsif request == request.upcase
		# Normal, but screaming, response
		randomNum = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + randomNum.to_s
	elsif
		# Yells at you to speak up
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end
puts 'HAVE A GOOD DAY, SONNY!'

puts 'Starting year?'
start = gets.chomp.to_i
puts 'Ending year?'
ending = gets.chomp.to_i
year_count = start
while year_count <= ending
	if year_count % 4 == 0 && year_count % 100 != 0
		puts year_count.to_s
	end
	year_count += 1
end