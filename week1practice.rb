=begin
Author: Mike
Date 8 June 2015
=end

#This is a single line comment

a=1
b=2
c=3
d,e,f = 4,5,6


puts a + b + c

print a + b + c


name = "Morticia Addams"

puts "Hello " + name
puts "Your name is " + name.length + " characters long!"
puts "Your name is " + name.reverse + " in reverse!"

husband = "Gomez Addams"

puts "You are married to " + husband
kids = ["Wednesday", "Pugsley"]

puts kids[0]
puts kids[1]


puts "What is your name?"
name = gets.chomp
puts name + " is your name."


#define keyword

def say_hello
	puts "hello"
end

say_hello
#you can only call your method once the method has been declared




def calculate_bmi_fixed
	weight = 140
	height = 66

	bmi.round(2) = weight.to_f/height

	puts "Your BMI is " + bmi.to_s
end
calculate_bmi_fixed


def calculate_bmi(weight,height)
	bmi = weight.to_f/height
	puts "Your BMI is " + bmi.to_s
end

calculate_bmi(140, 67)


def calculate_groceries
	fruit = 5.0
	meat = 4.0
	vegetables = 6.0

	total = fruit + meat + vegetables

	puts "The total price is " + total.to_s
end
calculate_groceries

