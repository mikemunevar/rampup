#wk3lab.rb
#Michael Munevar

=begin
Build an application that can encrypt and decrypt a string. For example:
 
encrypt(“This is a secret”)
should return something like “jhsdakha%j3jb”
 
You should also be able to decrypt the encrypted message.
 
decrypt(“jhsdakha%j3jb”)
it should return “This is a secret”
 
Bonus: Implement a Caesar Cipher encryption which is a simple encryption method by shifting the letters down a certain number. You’ll need the encrypted string and the correct number shifted.
encrypt(“this is a secret”, 5)
http://en.wikipedia.org/wiki/Caesar_cipher
=end



def encrypt(orig_string)
	puts "Encryption Method Running..."
	puts "Input: " + orig_string


	letter = Hash.new()
	x=0
	while x <= (orig_string.length - 1)
		letter[x] = orig_string[x]
		x += 1
	end


	#Display values of letter hash
	puts "Letter Hash:"
	letter.each do |key,value|
		puts "Key: #{key}  Value: #{value}"
	end



	x = 0
	offset = rand(30..70)
	puts "The offset is: #{offset}"
	cipher = Hash.new
	while x <= (orig_string.length - 1)
		cipher[x] = (offset + x).chr
		x += 1
	end



	#Display values of cipher hash
	puts "Cipher Hash:"
	cipher.each do |key,value|
		puts "Key: #{key}  Value: #{value}"
	end


	
	#Display cipher
	cipher.each do |k, v|
		print  "#{v} "
	end
	print "\n"

	return cipher, offset
end




def decrypt(s_code, s_key)
	puts "Decryption Method Running..."


	puts "s_code: " + s_code.to_s
	puts "s_code length: " + s_code.length.to_s


	x = 0
	puts "The offset is: #{s_key}"
	decoded = Hash.new
	while x <= (s_code.length - 1)
		decoded[x] = (s_code[x].to_i - s_key)
		puts decoded[x]
		x += 1
	end

end


secret_message = "This is a secret message."

secret_code = encrypt(secret_message)

puts "secret_code" + secret_code[0].to_s
puts "offset is" + secret_code[1].to_s

decrypt(secret_code[0], secret_code[1])


