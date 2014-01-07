
puts "Enter your favorite word"
fav_word = gets.chomp.split(//)	

length = 0

fav_word.each {|l| length += 1 }

length = length * -1

i = -1

until i < length
	print "#{fav_word[i]}"
	i -= 1
end
 
puts