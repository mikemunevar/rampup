#wk5guesswho.rb
# Guess Who game

=begin
Using everything that we have learned up to this point. Let’s create a Guess Who? Game (http://en.wikipedia.org/wiki/Guess_Who%3F) together. Your goal is to correctly identify the guilty suspect. You should have multiple classes. 
You have 3 chances. 
It should show a list of the suspects and the user are prompted to choose an attribute of hair color, eye color, skin color, or gender. 
let the user enter a color/gender. 
If guilty suspect doesn’t match the color/gender then remove the suspects of that color/gender

Suspects are on the next slide
=end

class Suspect
#name
	attr_reader:name  #getter and setter
	attr_reader:hair_color  #getter and setter
	attr_reader:gender  #getter and setter
	attr_reader:eye_color  #getter and setter
	attr_reader:skin_color  #getter and setter

	def initialize(record)
		attributes  = record.split
		@name       = attributes[0]
		@gender     = attributes[1]
		@skin_color = attributes[2]
		@hair_color = attributes[3]
		@eye_color  = attributes[4]
	end
end 	#endclass Suspect



class GuessWho
	attr_reader :suspects, :guilty_person
	attr_accessor :guess_count

	def initialize
		@guess_count = 3
		play_game
	end

	private

	def create_suspects
		@suspects = []
		suspects << Suspect.new("rachel girl black auburn brown")
		suspects << Suspect.new("mac boy white black brown")
		suspects << Suspect.new("nick boy white brown blue")
		suspects << Suspect.new("angie girl white auburn green")
		suspects << Suspect.new("theo boy white blonde brown")
		suspects << Suspect.new("joshua boy white black brown")
		suspects << Suspect.new("emily girl white blonde blue")
		suspects << Suspect.new("jason boy white blonde green")
		suspects << Suspect.new("john boy white brown blue")
		suspects << Suspect.new("grace girl black black brown")
		suspects << Suspect.new("jake boy white brown brown")
		suspects << Suspect.new("megan girl white blonde green")
		suspects << Suspect.new("ryan boy white auburn brown")
		suspects << Suspect.new("brandon boy white blonde brown")
		suspects << Suspect.new("beth girl white blonde brown")
		suspects << Suspect.new("diane girl black brown brown")
		suspects << Suspect.new("chris boy white black green")
		suspects << Suspect.new("david boy black black brown")
		suspects << Suspect.new("michelle girl black brown brown")
		suspects << Suspect.new("tyson boy black black brown")
		suspects << Suspect.new("ursula girl white auburn green")
	end


	#Not sure you need this
	def name
		@name
	end

	def set_guilty_person
		@guilty_person = suspects.shuffle.last
	end

	def play_game
		create_suspects
		set_guilty_person
		start_game
	end

	def start_game
		puts "Welcome to guess who"
		print_list_of_suspects

		while true do
			if guess_count > 0
				puts "You can choose what attribute to guess by typing hair, gender, eye or skin. You will be prompted to take a guess. you can exit now by typing exit."

				choice = gets.chomp.downcase
				
				return false if choice == "exit" or ask_questions(choice) == false
			end
		end    #endwhile

	end 	#enddef start_game


	def print_list_of_suspects
		puts "List of Suspects"
		puts "==============================="
		suspects.each do |suspect|
			puts suspect.name.capitalize
		end
		puts "==============================="
		
	end

	def ask_questions(choice)
	
		case choice
		when "hair"
			ask_about_hair
		when "gender"
			ask_about_gender
		when "eye"
			ask_about_eye
		when "skin"
			ask_about_skin
		when "exit"
			false
		end   #end case
	end 	#enddef ask_questions


	def ask_about_hair
		puts "========================="
		puts "What hair color? (brown black blonde auburn)"
		hair = gets.chomp.downcase

		if hair != guilty_person.hair_color
			suspects.reject! { |suspect| suspect.hair_color == hair }	#Awesome one-liner

			puts "========================="
			puts "The suspects hair color is not #{hair}"
			puts "========================="

		end

		if hair == guilty_person.hair_color
			suspects.keep_if { |suspect| suspect.hair_color == hair }

			puts "========================="
			puts "The suspect's hair color is #{hair}"
			puts "========================="

		end 
		take_a_guess  #NEED TO FINISH THIS

	end
end 	#endclass GuessWho


#name

#hair color

#eye color

#skin color

# gender




GuessWho.new


=begin
	
rescue Exception => e
	
end
#guilty_person = Person.new #to delete



# Need a Suspect class

# Need attributes for the person class(hair, eye, skin, gender)
# Need to create people based on data given. New Person(rachel      girl       black   auburn     brown)


#Gameplay class
#attributes: Number of guesses, guilty_person, suspects




#Guess who 

#1. create an array of suspects and put into suspects array.
#2. choose guilty suspect

#3. print out list of suspects

#4. prompt user to choose an attribute(skin, gender, eye hair)
#5. choose color
#6. check against guilty suspect 
#(if brown eyes yes, only return those with brown eyes)
#(if brown eyes no, only return those without brwon eyes)

#7. display list of suspects(see six)
#8. Prompt user to guess 
#9. If guess == correct, then you win
#if guess == incorrect, remove wrong guess from list of suspects
#	reduce number_of_guesses



#need to randomly choose a person

#need to prompt to guess

#logic needed to check for a match

#logic needed to remove innocent. redisplay potential guilty

=end

