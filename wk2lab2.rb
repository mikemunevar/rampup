#wk2lab2.rb
#Deaf Grandma
=begin
Write a Deaf Grandma program. Whatever you say to grandma(user input) she should respond with 
HUH?!, SPEAK UP SONNY!, unless you shout it(type in all CAPS). If you shout, she can hear you 
and yells back NO, NOT SINCE 1938! Grandma should shout a different year each time; random 
between 1930 to 1980. You can’t stop talking to grandma until you shout BYE.
=end

def deaf_grandma
	bye=0
	puts "HELLO THERE SONNY!  ASK ME ANY QUESTION?"


	while (bye < 1) do
		response = gets.chomp


		if (response=="BYE")
			puts "SO LONG SONNY!"
			bye +=1			
		elsif (response == response.upcase)
			year = rand(50) + 1930					#generate a year between 1930 and 1980
			puts "Not since #{year}!"
		elsif
			puts "HUH?! SPEAK UP SONNY!"
		end

	end

end

deaf_grandma