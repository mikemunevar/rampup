#wk3practice.rb

#

def check_plural(x)
	if x >= 2
		"bottles"
	else
		"bottle"
	end
end


def ninety_nine_bottles
	count = 10
	while count >= 1
		puts "#{count} bottles of beer on the wall"
		puts "#{count} #{check_plural(count)} of beer on the wall"
		
		count -= 1
	end
end

ninety_nine_bottles

#create a random year between 1930 and 1980
rand_year = rand(1930..1980)

array = [1,"two",3, 4.25,nil,true, false, 4]


puts array[0]
puts array[1]
puts array[2]
puts array.first #the first element
puts array.last #the last element

basket = []
basket.push("apples")
basket.push("orange")
basket.push("pineapple")
puts basket[0] + basket[1]
basket.push("grapes")
puts basket[3]
basket[3] = nil
puts basket[3]

#deletes ande reasisngs indexes
#basket.delete["apple"]


basket.pop

cars = ["ford", "honda", "nissan", "cadillac", "toyota", "buick"]

puts cars.length
puts cars.empty?
puts cars.include?("mercedes")
puts cars.sort
puts cars.shuffle
puts cars.rotate
puts cars.reverse
puts cars[0] + cars[1] + cars[2] + cars[3] + cars[4]
#Join adds it all to one string.
puts cars.join (", ")


#To permanently assign:
cars = cars.sort
cars.sort!  #This is known as the bang metod.



#hash = Hash.new and then hash["first_name"] = "Bobby"

hash = Hash.new
hash["first_name"] = "Bobby"
hash["last_name"] = "Smith"
hash["birthyear"] = 1969

puts hash["first_name"]
puts hash.keys.to_s + " => " + hash.values.to_s
puts hash.keys
puts hash.values



array = [1,2,3,4,5]
array.each do |x| 
	puts x + 1
end


hash = { "first_name" => "Bobby", "last_name" => "Lee" }

hash.each do |k,v|
	puts "My #{k} is #{v}"
end

10.times{puts "Hello"}

array = [1,2,3,4,5]
array.each
#array.even?

numbers = [1,2,3,4,5,6,7,8,9]
numbers.select do |number| 
	puts number.even?
end


(1..10).each do |number|
	puts number
end

("A".."z").each do |letter|
	puts letter
end

puts ""



