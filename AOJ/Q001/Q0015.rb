#National Budget
gets.to_i.times do
	a = gets.chomp.to_i
	b = gets.chomp.to_i
	puts (a+b).to_s.length>80 ? "overflow" : a+b
end