#Exercise 1
#Convert Celcius to Fahrenheit
#Convert F to C


def c_to_f (input)
	#output = input*(9.0/5)+32
	#return output
	input*(9.0/5)+32
end

def f_to_c(input)
	#output = (input - 32.0)*5/9
	#return output
	(input - 32.0)*5/9
end


puts "Enter the temperature in Celcius:"
temperature = gets.chomp.to_i
#c_to_f(temperature)

puts temperature.to_s + " degrees celcius is equivalent to " + c_to_f(temperature).to_s + " degrees fahrenheit."



puts "Enter the temperature in Fahrenheit:"
temperature = gets.chomp.to_i
#f_to_c(temperature)

puts temperature.to_s + " degrees fahrenheit is equivalent to " + f_to_c(temperature).to_s + " degrees celcius."

