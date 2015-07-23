#wk7practice.rb


require 'httparty'

class FireStation
	def initialize
#		response = HTTParty.get("http://www.google.com")
#		puts response.body
		#response = HTTParty.get("https://data.cityofnewyork.us/resource/hc8x-tcnd.json")
		#puts response.body
		find_station
	end

	def find_station
		puts "Which fires station are you looking for?"
		fire_station = gets.chomp
		encoded_response = URI.encode(fire_station)
		response = HTTParty.get("https://data.cityofnewyork.us/resource/hc8x-tcnd.json?facilityname=#{encoded_response}")

		puts "JSON: #{response.class}"
		parsed_response = JSON.parse(response.body)
		puts "parsed: #{parsed_response.class}"
		result = parsed_response.first

		puts "The location of #{result["facilityname"]} is at #{result["facilityaddress"]} in #{result["borough"]}"
	end
end

#This returns a large list of New York City Fire stations
station = FireStation.new
#station.find_station