# Improved ask method
# Using return instead of the last answer variable
# def ask question
# 	while true
# 		puts question
# 		reply = gets.chomp.downcase
# 		if (reply == 'yes' || reply == 'no')
# 			if reply == 'yes'
# 				return true
# 			else
# 				return false
# 			end
# 			break
# 		else
# 			puts 'Please answer "yes" or "no".'
# 		end
# 	end
# end
# puts 'Thanks for taking the quiz!'
# puts
# ask 'Do you like eating tacos?'
# ask 'Do you like eating burritos?'
# wets_bed = ask 'Do you wet the bed?'
# puts 'That\'s all the questions! Thanks!'
# puts
# puts wets_bed

# Old-school Roman numerals
# 9 would return VIIII
def osrn num
	letters = ''
	romLet = ['M', 'D', 'C', 'L', 'X', 'V']
	romNum = [1000, 500, 100, 50, 10,  5]
	a = 0
	while a < romLet.length
		while num % romNum[a] != num
			letters = letters + romLet[a]
			num = num - romNum[a]
		end
		a += 1
	end
	letters = letters + 'I'*num
end
puts osrn 2400	# 2554 -- MMDLIIII
								# 2400 -- MMCCCC

# Modern Roman numerals
# 2400 should return MMCD -- 1000 + 1000 + (-100 + 500)
# Smaller number comes before the larger
def mrn num
	letters = ''
	romLet = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
	romNum = [1000, 500, 100, 50, 10,  5, 1]
	a = 0
	while a < romLet.length - 1
		while num % romNum[a] != num
			letters = letters + romLet[a]
			num = num - romNum[a]
		end
		while num % (romNum[a] - romNum[a+1]) != num
			letters = letters + romLet[a+1] + romLet[a]
			num = num - (romNum[a] - romNum[a+1])
		end
		a += 1
	end
	letters = letters + 'I'*num
end
puts mrn 2403

