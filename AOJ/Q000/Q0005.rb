#GCD and LCM
while num = gets
	num = num.chomp.split(" ").map{ |x| x.to_i }
	puts "#{num[0].gcd(num[1])} #{num[0].lcm(num[1])}"
end