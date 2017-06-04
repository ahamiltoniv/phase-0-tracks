class Hamster
	def initialize
		@ham_name = nil
		@ham_vol = nil
		@ham_color = nil
		@adopt_status = nil
		@ham_age = nil
	end
	def get_name
		puts "What is the hamster's name: "
		@ham_name = gets.chomp()
	end
	def get_vol
		puts "How loud is the hamster (1-10): "
		vol_str = gets.chomp()
		@ham_vol = vol_str.to_i
	end
	def get_color
		puts "What color: "
		@ham_color = gets.chomp()
	end
	def get_adopt
		puts "Good Candidate for adoption? (y/n) "
		adopt_str = gets.chomp()
		if adopt_str == "y"
			@adopt_status = true
		else
			@adopt_status = false
		end
	end
	def get_age
		puts "What is the hamster's name: "
		age_str = gets.chomp()
		if age_str == ""
			@ham_age = nil
		else
			@ham_age = age_str.to_i
		end
	def print_record
		puts "Name: " + @ham_name
		puts "Volume Level: #{@ham_vol}"
		puts "Fur Color: " + @ham_color
		puts "Good Candidate for Adoption: #{@adopt_status}"
		if @ham_age != nil
			puts "Age: #{@ham_age}"
		else
			puts "Age: Unknown"
		end
	end
	def get_record
		get_name()
		get_color()
		get_vol()
		get_adopt()
		get_age()
	end
end

hamster1 = Hamster.new()

hamster1.get_record()
hamster1.print_record()
end