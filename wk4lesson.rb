#wk4lesson.rb


#HW Review:

# Could use rotate(5) or rotate(-5) to get it go go
# dont need to use 

#use the .split method to create multiple string for each letter
#github.com/mteatran

# Zip allows you to "zip" two arrays together into one hash
# characters.zip(rotated_characters)


"hello".split("")

# today we wite our own classes(object)
"string"
#is the same as:
String.new("string")




class Person
	def initialize(name)
		@name = name
		puts "You just created #{name}"
		birthyear = "" 
	end

	attr_reader:name  # getter only
	attr_writer:name  # setter only
	attr_accessor:name  #getter and setter
	#The following is a getter method
	def name
		@name
	end

	#The following is a setter method
	def name=(new_name)
		@name = new_name
	end



	def introduce_self
		puts "Hi, my name is #{@name}"
	end


	def say_hello
		puts "hello"
	end

end

main_character = Person.new("Marty")
main_character.say_hello
main_character.introduce_self

person1 = Person.new("John")
puts person1.name
person1.name = "Simon" 
puts person1.name


#blackjack game
# dealer - hand, points, total, hit? bust?
# Deck of Cards - [ an array ]
# player hand, points, total, hit?  bust?

#player gets two cards
# dealer gets two cards


