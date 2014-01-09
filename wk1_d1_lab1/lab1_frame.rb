puts "Please enter a phrase to be framed"

phrase = gets.chomp.split
width = [0].length

phrase.each do |w|
	if w.length > width
	width = w.length 
	else
	end
end

frame_l = width + 2

puts "*" * frame_l

 phrase.each do |w|
 	puts "*" + w.center(width) + "*"
end

puts "*" * frame_l  



