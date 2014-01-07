# Program creates a random number and then iterates on a user guessing for that number
num = rand(100)

guess_count = 1

puts "Guess a number between 1 and 100:"
guess = gets.to_i

until guess == num

	if guess > num
		puts "The number is lower than #{guess}.  Guess again."
		guess_count += 1
		guess = gets.to_i
	else
		puts "The number is higher than #{guess}. Guess again"
		guess_count += 1
		guess = gets.to_i
	end

end

puts "#{guess} is the correct number!  Elaine is the prettiest girl in the world.  You got it in #{guess_count} tries."