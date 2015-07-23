#wk5practice.rb



=begin

def wk5practice

	y = false
	dealer = "john"
	hand = 2
	answer = y

	# The following is an if statement in one line
	# only runs if the response is 'y' (but not if its 'Y')
#	answer == 'y' ? true : false # This is called a ternary operator

#	puts "Dealer draws a #{dealer.hand.last}."
#	puts "Dealer now has a hand total of #{dealer.point_total}."

#end

=end
# wk5practice


class Person
	@@person_count = 0

	def initialize
		@@person_count += 1
	end

	def self.counts
		@@person_count
	end
end


mailman = Person.new
lawyer = Person.new
puts Person.counts



#you can also create private methods.  Here's how

class Person2
	def say_word(word)
		puts "#{word}"
	end

	def say_secret_word
		puts secret_word
	end

	private
	def secret_word
		"This is a secret"
	end
end

person = Person2.new
person.say_word("hello")
# This should fail, it is a private method and can't be called directly like this
#puts person.secret_word  

# This is the correct way to call a private method
person.say_secret_word



# Protected methods are similar to private, but they are more lenient.  They allow access from the same class
# Ex: If they are both Person from the same class, then they can talk to each other.  If not, it won't work




#inheritance
#Use the < character

class Mammal
	def breathe
		"Inhale and exhale"
	end
end

class Human < Mammal
	def walk
		puts "walking"
	end
end

person = Human.new

person.walk
person.breathe

class Dolphin < Mammal
	def swim
		puts "swimming"
	end
end

dolphin =Dolphin.new
dolphin.swim
dolphin.breathe


