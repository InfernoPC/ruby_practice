require 'Mathn'
gets.chomp.to_i.times do 
	s_e = gets.chomp.split(" ").map { |x| x.to_i }
	prime_num = Array.new
	Prime.each(s_e[1]) { |x| prime_num.push(x) }
	Prime.each(s_e[0]-1) { |y| prime_num.delete(y) }
	puts prime_num
end
