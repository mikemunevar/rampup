#wk2lab1.rb
#99 Bottles of Beer

x = 99
while (x >= 1) do
	puts "#{x} bottles of beer on the wall... #{x} bottles of beer"
	puts "Take one down pass it around..."
	puts (x-1).to_s + " bottles of beer on the wall!"
	
	x -= 1
	puts
end
