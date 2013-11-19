# Angry boss
# Repeats your request, then fires you -- how rude!
puts 'WHAT DO YOU WANT!?'
request = gets.chomp
puts 'WHADDAYA MEAN "' + request.upcase + '"?!? YOU\'RE FIRED!!'


# Table of Contents
# Organize a ToC using center, ljust, and rjust
line_width = 50
puts ('Table of Contents'.center(line_width))
puts ('Chapter 1:  Getting Started'.ljust(line_width/2) + 'page 1'.rjust(line_width/2))