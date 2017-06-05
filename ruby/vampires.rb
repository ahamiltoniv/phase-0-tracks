def get_info #Since I don't define a class, I'm using global variables which is probably bad practice, but I think its needed for me in this case
	puts "What is your name?"
	$name_str = gets.chomp()
	puts "How old are you?"
	$age_str = gets.chomp()
	$age = $age_str.to_i
	puts "What is your birth year?"
	$by_str = gets.chomp()
	$year = $by_str.to_i
	puts "Do you like garlic bread? (y/n)"
	$gb_str = gets.chomp()
	puts "Do you want health insurance? (y/n)"
	$ins_str = gets.chomp()

	$vamp_sun = false
	allerg_str = ""
	while !$vamp_sun && allerg_str != "done"
		puts "List any allergies you have"
		allerg_str = gets.chomp
		
		if allerg_str == "sunshine"
			$vamp_sun = true
			return
		end
	end


end

def check_info
	if $vamp_sun
		puts "Name: " + $name_str
		puts "Probably a vampire."
		return
	end
		 
	if $name_str == "Drake Cula" || $name_str == "Tu Fang"
		vamp_name = true
	else
		vamp_name = false
	end

	if $age == (2017 - $year) || $age == (2017 - ($year+1)) #birthday after the present calendar date in that year needs second condition
		vamp_age = false
	else
		vamp_age = true
	end

	if $gb_str == "n"
		vamp_garlic = true
	else
		vamp_garlic = false
	end

	if $ins_str == "n"
		vamp_ins = true
	else
		vamp_ins = false
	end

	if vamp_name
		vamp_status = 3
	elsif (vamp_garlic && vamp_ins) && vamp_age
		vamp_status = 2
	elsif (vamp_garlic || vamp_ins) && vamp_age
		vamp_status = 1
	elsif !(vamp_garlic || vamp_ins) && !vamp_age
		vamp_status = 0
	else
		vamp_status = 4 #results inconclusive
	end

	if vamp_status == 0
		result = "Probably not a vampire."
	elsif vamp_status == 1
		result = "Probably a vampire."
	elsif vamp_status == 2
		result = "Almost certainly a vampire."
	elsif vamp_status == 3
		result = "Definitely a vampire"
	else
		result = "Results inconclusive."
	end

	puts
	puts "Name: " + $name_str
	puts result
end

puts "How many employees to be entered?"
empl_str = gets.chomp
empl_int = empl_str.to_i

while empl_int > 0
	get_info
	check_info
	empl_int = empl_int - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."