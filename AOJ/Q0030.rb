#Sum of Integers
map = Hash.new(0)
1.upto(10) do |i|
	[0,1,2,3,4,5,6,7,8,9].combination(i).to_a.collect!{|ary| ary.inject{|sum, x| sum + x}}.each do | sum |
		map[[i,sum]] += 1
	end
end
until gets.chomp == '0 0'
	puts map[$_.split.map{|e| e.to_i}]
end