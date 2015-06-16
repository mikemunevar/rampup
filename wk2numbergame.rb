
def number_game

	number = rand(100)
	count = 1
	puts "The number is: #{number}"

	puts "Guess a number between 1 and 100.  You have 5 guesses."
	answer = gets.chomp.to_i

	while number != answer && count <=5


		count++

		if (answer > 100 || answer < 1)
			puts "not a number between 1 and 100"
			answer = gets.chomp.to_i

		elsif number > answer
			puts "too low Guess again"
			answer = gets.chomp.to_i
		elsif number < answer
			puts "too high. guess again"
			answer = gets.chomp.to_i



		end

		if number == answer
		puts "you got it!"
	end

	end

end


number_game
