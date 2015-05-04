loop do 
	aa = gets.chomp
	puts aa unless aa.to_i == 42
	break if aa.to_i == 42
end
