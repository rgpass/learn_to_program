# Recursion: When you call the function inside the function
# def ask_recursively question
# 	puts question
# 	reply = gets.chomp.downcase
# 	if reply == 'yes'
# 		true
# 	elsif reply == 'no'
# 		false
# 	else
# 		puts 'Please answer "yes" or "no".'
# 		ask_recursively question # This is the magic line!
# 	end
# end
# ask_recursively "Do you wet the bed?"

def factorial num
	if num < 0
		return 'Not allowed, brah.'
	end
	if num <= 1
		1
	else
		num * factorial(num-1)
	end
end
puts factorial(3)
puts factorial(27)


# Using recursion to get the size of a map
M = 'land'
o = 'water'
world = [[M,o,o,o,o,o,o,o,o,o,M],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,M]]
def continent_size world, x, y
	if world[y][x] != 'land'
		# Water or we already counted it
		# Either way, don't want to count it now
		return 0
	end
	size = 1
	world[y][x] = 'counted land'
	size = size + continent_size(world, x-1, y-1)
	size = size + continent_size(world, x , y-1)
	size = size + continent_size(world, x+1, y-1)
	size = size + continent_size(world, x-1, y )
	size = size + continent_size(world, x+1, y )
	size = size + continent_size(world, x-1, y+1)
	size = size + continent_size(world, x , y+1)
	size = size + continent_size(world, x+1, y+1)
	size
end
puts continent_size(world, 5, 5)


# Sorting method
sortedFinal = ['ant', 'Apple', 'bake', 'Bread']
unsortedArray = ['bake', 'Apple', 'Bread', 'ant', 'a']
def recursive_sort unsorted_array
	i = 0
	while i < unsorted_array.length - 1
		if unsorted_array[i].downcase > unsorted_array[i+1].downcase
			holder = unsorted_array[i]
			unsorted_array[i] = unsorted_array[i+1]
			unsorted_array[i+1] = holder
			recursive_sort unsorted_array
		end
		i += 1
	end
	return unsorted_array
end
puts recursive_sort unsortedArray