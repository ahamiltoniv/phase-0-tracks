=begin
encrypt(str message)
-get the length of the string
-iterate through until index = length
	-if space -> stay space
	-if z -> a
	else advance letter at that index by using .next

	add letter to new output string
return output string

decrypt(message)
-get the length of the string
-iterate through until index = length
	-if space -> stay space
	-if a -> z
	else reduce letter at that index by using alphabet string
		new letter = alphabet[alphabet.index(old_letter) -1]

	add letter to new output string
return output string
=end
def encrypt(message)
	msg_index = 0
	msg_length = message.length #I defined this variable here because I thought it might save operations while iterating, irrelevant at this scale, worse on memory
	coded_str = ""

	while(msg_index < msg_length) 
		coded_str += getEncodeLetter(message[msg_index])
		msg_index += 1
	end
	return coded_str
end

def getEncodeLetter(char) #takes a 1 character string and returns the encoded version
	if char == " "
		output = " "
	elsif char == "z"
		output = "a"
	else
		output = char.next
	end
end

def decrypt(message)
	msg_index = 0
	msg_length = message.length #I defined this variable here because I thought it might save operations while iterating, irrelevant at this scale, worse on memory
	coded_str = ""

	while(msg_index < msg_length) 
		coded_str += getDecodeLetter(message[msg_index])
		msg_index += 1
	end
	return coded_str
end

def getDecodeLetter(char) #takes a 1 character string and returns the decoded version
	key = "abcdefghijklmnopqrstuvwxyz" #top-secret
	if char == " "
		output = " "
	elsif char == "a"
		output = "z"
	else
		output = key[key.index(char) - 1]
	end
end

=begin interface pseudo code
prompt input for encode or decode
prompt password

if input was encode
	display encoded password
else if decode was requested
	display decoded password
else give error message
=end

def password_interface
	puts "Do you want to encode or decode a password?"
	input = gets.chomp
	puts "What is the password?"
	password = gets.chomp

	if input == "encode"
		puts encrypt(password)
	elsif input == "decode"
		puts decrypt(password)
	else
		puts "Error"
	end
end
		

#driver code
#puts decrypt(encrypt("swordfish"))
#puts getDecodeLetter(" ")

password_interface