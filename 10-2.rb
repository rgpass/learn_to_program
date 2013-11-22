# Shuffle
original = ['A', 'B', 'C', 'D']
def shuffle_large original_array, shuffled_array
	i = 0
	pos = rand(4)
	while i < original_array.length
		while !shuffled_array[pos].nil?
			pos = rand(4)
		end
		shuffled_array[pos] = original_array[i]
		i += 1
	end
	return shuffled_array
end

def shuffle_wrapper original_array
	shuffle_large original_array, []
end
puts shuffle_wrapper original

# Sorting that ignores capital letters
# Already done in 10-1. Copied here for simplicty.
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