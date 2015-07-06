#wk4blackjack.rb



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

	def deal_to_player
		self.player.hand << self.deck.pop
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
		deal_cards
		while true do
			puts "Player you have a total of #{player.total_points} points?"
			puts "Would you like to hit?(y/n)"
			choice = gets.chomp
			if choice.upcase == "Y"
				deal_to_player
			elsif choice.upcase == "N"
				puts "ok, you stayed at #{player.total_points}"
				break
			end
		end

	end

end


class Player
	attr_accessor :hand
	def initialize
		@hand = []
	end

	def total_points
		self.hand.inject(:+)
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


	game = Blackjack.new


	#puts game.deck
	#puts game.deck.count
end


game = Blackjack.new

game.deal_cards

puts game.player.hand
puts game.player.total_points
puts game.dealer.hand
puts game.dealer.total_points

game.game_play
