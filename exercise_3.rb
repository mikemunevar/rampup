#Exercise 3
#Name and year born


puts "What is your name?"
name = gets.chomp.capitalize
puts "What year were you born in?"
birth_year = gets.chomp.to_i



#Grab the current year from the system
t=Time.now
current_year = t.year
age = current_year - birth_year



puts "Your name is " + name + " and you are " + age.to_s + " years old."
puts name + " was born in " + birth_year.to_s + "."


print "\n\n\n"
puts "Your name is #{name} and you are #{age} years old."