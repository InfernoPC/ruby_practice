#Debt Hell
n = 100
r = 1.05
gets.chomp.to_i.times do
	n = (n*r).ceil
end
puts "#{n}000"

