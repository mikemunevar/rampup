#wk2lab3.rb
#Deaf Grandma
=begin
Write a Deaf Grandma program. Whatever you say to grandma(user input) she should respond with 
HUH?!, SPEAK UP SONNY!, unless you shout it(type in all CAPS). If you shout, she can hear you 
and yells back NO, NOT SINCE 1938! Grandma should shout a different year each time; random 
between 1930 to 1980. You can’t stop talking to grandma until you shout BYE.

Add on to the above. Grandma really loves your company and doesn’t want you to go 
unless you shout BYE three times in a row. So if you say BYE twice and then something 
else you have to say BYE three times again.
=end


def deaf_grandma
	puts "HELLO THERE SONNY!  ASK ME ANY QUESTION?"
	bye = 1

	while (bye <= 3) do
		response = gets.chomp


		if (response == "BYE" && bye >= 3 )
			puts "SO LONG SONNY! STOP BY ANYTIME!"
			bye += 1					
		elsif (response =="BYE" && bye < 3 )
			puts "YOU KIDS THESE DAYS ARE ALWAYS IN A RUSH! WON'T YOU STAY A LITTLE LONGER?"
			bye += 1				
		elsif (response == response.upcase)
			year = rand(50) + 1930
			puts "NOT SINCE #{year}!"
			bye = 1
		else
			puts "HUH?! SPEAK UP SONNY!"
			bye = 1
		end

	end

end

deaf_grandma