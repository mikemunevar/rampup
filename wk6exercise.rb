#wk6exercise.rb
#Choose your own adventure game

#You walk into jurassic park


module Creature
	# Can-poop? = true

	def breathe
		puts "inhale exhale air"
	end

	def poop
		puts "Pooping"
	end

	def sleep
		puts "Sleeping...  ZZZzzz...."
	end

end


module Reptile
	#Attributes
	attr_accessor :has_scales, :lays_eggs   #getter and setter

	#Actions
	def make_a_sound
		puts "ROARRRR!!!"
	end

end

module Fish
	#Attributes
	attr_accessor :has_scales, :lays_eggs  #getter and setter

	#Actions
	def swim
		puts "swim swim swim" 
	end

	def make_a_sound
		puts "Glug glug glug..."
	end
end


module Mammal
	#Attributes

	attr_accessor :has_hair, :lays_eggs   #getter and setter


	#Actions
	#has hair
 	# lays egg? = false
 	def walk
 		puts "Walking..."
 	end

end



class Dinosaurs
	#attributes
	attr_accessor :name, :weight   #getter and setter

	include Creature
	include Reptile
end

class Mammals
	#attributes
	attr_accessor :name, :weight   #getter and setter

	include Creature
	include Mammal
end


class Play_game


	def initialize(record)
		raptor = new Dinosaurs
		trex = new Dinosaurs
		mammoth = new Mammals
		sharky = new Fish
	end

	#platypus = new Platypus
	raptor.make_a_sound
	raptor.breathe
	mammoth.make_a_sound
	mammoth.walk
	sharky.make_a_sound
	sharky.swim

	puts "Welcome to Jurassic Park.  You are immediately greeted by two raptors!"
	puts "They greet you by saying #{raptor.make_a_sound}"

	choice = Perform_action
	
		case choice
		when "stay"
			puts  "The raptors eat you."
		when "attack"
			puts  "The raptors eat you."
		when "flee"
			puts  "You escape by the skin of your teeth!  You win!"
		when "exit"
			puts "exiting game"
		end   #end case
	

end

def Perform_action
	puts "Choose your action: (stay / attack / flee / quit)"
	action = gets.chomp.downcase
end


Play_game.new

	







# Class
# class LPC league point calculator
# Class Team
# 		This should have an @team = []  array
#      An addr_accessor of @teams = []

# Options:  
# Press 1 to add score
#  			>>>  Ask for score, break out using SPLIT
# 			>>>  Yankees 5 Mets 4
# 			You can .push the new team in the array
# 			if teams.include("whatever_the_teams_name_is") 
#  			team << Team.new
# Press 2 display ranking
#    		>>>  Output


#last step is to show

# .sortby("name")



# a guy that used opendata source to find opendata restaurant violation
# rock paper scissor game
# library finder
# bank account 

#NYC opendata 

#yahoo finance api
#weather noah
