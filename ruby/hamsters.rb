puts "What is the hamster's name: "
ham_name = gets.chomp()
 
puts "How loud is the hamster (1-10): "
vol_str = gets.chomp()
ham_vol = vol_str.to_i


puts "What color: "
ham_color = gets.chomp()


puts "Good Candidate for adoption? (y/n) "
adopt_str = gets.chomp()
if adopt_str == "y"
	adopt_status = true
else
	adopt_status = false
end

puts "What is the hamster's age: "
age_str = gets.chomp()
if age_str == ""
	ham_age = nil
else
	ham_age = age_str.to_i
end

puts "Name: " + ham_name
puts "Volume Level: #{ham_vol}"
puts "Fur Color: " + ham_color
puts "Good Candidate for Adoption: #{adopt_status}"
if ham_age != nil
	puts "Age: #{ham_age}"
else
	puts "Age: Unknown"
end
