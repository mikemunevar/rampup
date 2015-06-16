#Week 2 Story.rb

def interactive_story


	puts "You are in a forest. Which way do you go?"
	direction = gets.chomp.upcase

	if direction == "NORTH"
		puts "you enter a small village."
	elsif direction == "EAST"
		puts "You enter a cave"
	else
		puts "Please enter a valid direction"
	end

end



interactive_story
