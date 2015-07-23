#wk4blackjackhw.rb



#blackjack game
# dealer - hand, points, total, hit? bust?
# Deck of Cards - [ an array ]
# player hand, points, total, hit?  bust?

#player gets two cards
# dealer gets two cards



class Blackjack
	attr_accessor:player
	attr_accessor:dealer
	attr_accessor:deck 

	def initialize
		@player = Player.new
		@dealer = Dealer.new
		@deck = ([1,2,3,4,5,6,7,8,9] * 4 + ([10] * 16)).shuffle!
	end

	#what is the purpose of << ?
	def deal_to_player
		self.player.hand << self.deck.pop
		#Can also be player.hand << deck.pop
		# The "self." is implicitly defined in Ruby, it knows to check there first
	end


	def deal_to_dealer
		self.dealer.hand << self.deck.pop
	end

	def deal_cards
		2.times do
			deal_to_player
			deal_to_dealer			
		end		
	end


	def game_play


		#good idea is to wrap these into methods
		while true do
			puts "Player you have a total of #{player.total_points} points?"


			if !player.bust?  		# Alternative code is: if player.total_points <= 21
				puts "Would you like to hit? (y/n)"
				choice = gets.chomp

				if choice.upcase == "Y"
					deal_to_player
				elsif choice.upcase == "N"
					puts "OK, you stayed at #{player.total_points}"
					break
				end
			else
				puts "You busted!  Your total points are: #{player.total_points} "
				break
			end

		end    #endwhile



		while dealer.bust? == false
			if dealer.total_points <= 17
				deal_to_dealer
				puts "Dealer hits!  Dealer now has #{dealer.total_points}."

				if dealer.bust? == true
					puts "Dealer now has #{dealer.total_points}.  Dealer BUSTED!"
					break
				end

			elsif dealer.total_points >= 17 || dealer.total_points <= 21
				puts "Dealer stays at #{dealer.total_points}."
				break
			end

		end #endwhile



		#Check who wins
		puts "Dealer has #{dealer.total_points}.  Player has #{player.total_points}"

		if (player.total_points > dealer.total_points && player.bust? == false) || (dealer.bust? == true && player.bust? == false )
			puts "You are a WIIIINNER !!!"
		else
			puts "Sorry, you LOSE!"
		end


	end

end



class Player
	attr_accessor:hand
	
	def initialize
		@hand = []
	end

	def total_points
		self.hand.inject(:+)			#Not sure of hte purpose of .inject(:+)
	end

	def bust?
		self.total_points > 21
	end

end



class Dealer
	attr_accessor:hand

	def initialize
		@hand = []
	end

	def total_points
		self.hand.inject(:+)
	end

	# A method to check if the dealer has busted
	def bust?
		self.total_points > 21
	end


	#game = Blackjack.new			#I believe this line should not be present

	#puts game.deck 				#To display the deck
	#puts game.deck.count			#To count the cards
end




game = Blackjack.new

#Deal the cards
game.deal_cards


#Display the preliminary hands
print "game.player.hand is: "
puts game.player.hand
print "game.player.total_points is: "
puts game.player.total_points
print "game.dealer.hand is: "
puts game.dealer.hand
print "game.dealer.total_points is: "
puts game.dealer.total_points

#Begin the gameplay
game.game_play
