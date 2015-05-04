#Drawing Lots
lines = Array.new(gets.to_i,0)
1.upto(lines.length){ |i|  lines[i]=i }

gets.to_i.times do
	swap = gets.chomp.split(",").map{|x| x.to_i}
	lines[swap[0]], lines[swap[1]] = lines[swap[1]], lines[swap[0]]
end
puts lines[1..lines.length]
