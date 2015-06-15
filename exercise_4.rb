#Exercise 4
#Madlibs

puts "The following is a Madlibs game.  Please begin by entering the following data:"

puts "Male Name"
male_name = gets.chomp.capitalize

puts "Female Name"
female_name = gets.chomp.capitalize

puts "An animal: "
animal = gets.chomp

puts "An adjective used to describe the sky: "
sky = gets.chomp

puts "Any color:"
color = gets.chomp

puts "Any number between 2-12"
number = gets.chomp



# Once upon a time, there lived a young couple in a small but comfortable COLOR cottage.  Their names were MALE_NAME and FEMALE_NAME.  In their cottage they lived with a ANIMAL and their NUMBER children. One SKY morning...


print "Once upon a time, there lived a young couple in a small but comfortable "
print color 
print " cottage on a hill.  Their names were "
print male_name 
print " and " 
print female_name
print ".  In their cottage they lived with a "
print animal
print " and their " 
print number 
print " children. One "
print sky 
print " morning..."
print "\n"
