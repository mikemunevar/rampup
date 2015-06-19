
def number_game

	number = rand(100)
	count = 4
	puts "The number is: #{number}"

	puts "The purpose of this game is to guess a number between 1 and 100.  You have 5 tries."
	answer = gets.chomp.to_i



	while (number != answer) && (count >= 1)

		if (answer > 100 || answer < 1)
			puts "Not a number between 1 and 100. You have #{count} guesses left"
			answer = gets.chomp.to_i
			count = count - 1
		elsif number > answer
			puts "Too low. Guess again.  You have #{count} guesses left"
			answer = gets.chomp.to_i
			count = count - 1
		elsif number < answer
			puts "Too high. Guess again. You have #{count}guesses left"
			answer = gets.chomp.to_i
			count = count - 1
		end


		if count==0
			puts "You've exhaused the number of tries. The number was #{number}"
		if number == answer
			puts "Good job! You guessed it in #{count} tries!"
			count=0
		end

		count = count - 1

		end

	end

end


number_game
