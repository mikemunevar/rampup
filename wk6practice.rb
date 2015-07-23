#wk6practice.rb
#Present: Richard, Malina, Ashley, Sean & Deborah


#A simple example of when to use self.

class Person
	def name  #Setter method
		@name
	end


	def name=(name)		#Getter method
		@name = name
	end

	def shout_name
		self.name.upcase
		#is the same as:
		name.upcase
	end

	def change_name
		self.name = "Metta"
	end


end


person = Person.new
person.name = "Joe"
puts person.name
puts person.shout_name

person.change_name
puts person.name
puts person.shout_name


### Week 6 Lesson  ###

module MicrosoftOffice
	class Document

	end
end


module GoogleDoc
	class Document
	end
end

# MicrosofOffice::Document.new
#GoogelDoc::Document.new   #To prevent clashing\


#Mixins are an alternative to multiple inheritance
module Mammal
	def breathe_air
		puts "inhale exhale air"
	end
end

module Feline
	def purr
		puts "purr"
	end
end

class Cat
	include Feline
	include Mammal
end

cat = Cat.new
cat.purr
cat.breathe_air


#in the case of the platypus(which lays eggs, but is a mammal)  make a main class mammal with Lays_eggs? = false.  Then create a subclass playtypus that sets lays_eggs? = true


