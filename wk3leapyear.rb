#wk3leapyear.rb

def leap_year
	puts "Enter starting year"
	start_year = gets.chomp.to_i
	puts "Enter ending year"
	end_year = gets.chomp.to_i

	(start_year..end_year).each do |year|
		#if year % 4 == 0 && (year % 100 != 0 || year % 400)
		if (year % 4 == 0 && year % 100 != 0)  || (year % 4 == 0 && year % 400 == 0)
			puts year.to_s + " is a leap year."
		end
	
	end


end

leap_year