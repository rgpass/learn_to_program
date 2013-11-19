puts 5**2 # Exponential -- 25
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts (5-2).abs # 3
puts (2-5).abs # 3

# rand gives you a number (0 <= num < 1)
puts rand
puts rand(100) # Any integer between 0 and 99
puts rand(101) # Returns 0 to 100

# If you want to store a set of random numbers, you have
# to seed them using srand
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
# The second set outputs the same as the first set.

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
# The floats aren't exactly right. Don't trust them for
# computational purposes.
