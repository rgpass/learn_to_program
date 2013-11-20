# Building and sorting an array
storage = []
while true
	entry = gets.chomp
	if entry.length > 0
		storage.push(entry)
	else
		break
	end
end
puts storage.sort


# Table of Contents, revisited
line_width = 50
chapterTitles = ['Getting Started', 'Let\'s Do This!', 'Become Captain Awesome']
pageNumbers = [1, 5, 13]
puts ('Table of Contents'.center(line_width))
numb = chapterTitles.length
a = 0
while a < numb do
	a += 1
	puts (('Chapter ' + a.to_s + ':  ' + chapterTitles[a-1]).ljust(line_width/2) + ('page ' + pageNumbers[a-1].to_s).rjust(line_width/2 + chapterTitles[0].length - chapterTitles[a-1].length))
end 