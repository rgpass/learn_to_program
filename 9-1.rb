def say_moo
	puts 'moooo...'
end
say_moo # 'moooo...'

def say_ruff number_of_ruffs # This is where you define params
	puts 'ruff...' * number_of_ruffs
	'yellow submarine'
end

say_ruff 3

def double_this num
	num_times_2 = num*2
	puts num.to_s + ' double is ' + num_times_2.to_s
end

double_this 44
# puts num_times_2.to_s # causes an error since variable defined locally

tough_var = 'You can\'t even touch my variable!'
def little_pest tough_var
	tough_var = nil
	puts 'HAHA! I ruined your variable!'
end
little_pest tough_var
puts tough_var
# HAHA! I ruined your variable!
# You can't even touch my variable!
# Removing tough_var in the params and the call doesn't affect
# the outside variable. These two variables are completely
# independent.

return_val = puts 'This puts returned:'
puts return_val
# 'This puts returned:'
# (blank)

x = say_ruff 3	# ruff...ruff...ruff..
puts x.capitalize + ', dude...' # Yellow submarine, dude...
puts x            + '.' # yellow submarine

# using return in a method will explicitly tell the method
# what to return. If not defined, it will use the last expression
# evaluated

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	answer # This is what we return (true or false)
end
puts 'Thanks for taking the quiz!'
puts
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
puts 'That\'s all the questions! Thanks!'
puts
puts wets_bed