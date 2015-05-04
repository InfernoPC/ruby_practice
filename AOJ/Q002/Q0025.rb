#Hit and Blow
while gets
	hit, blow = 0, 0
	a = $_.split
	b = gets.split
	0.upto(3) do |i|
		b[i] == a[i] ? hit += 1 : (blow +=1 if a.include?(b[i]))
	end
	puts "#{hit} #{blow}"
end