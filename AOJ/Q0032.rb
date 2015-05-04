#Plastic Board
rec = 0
loz = 0 
while gets
	a, b, c = $_.split(",").map{|x| x.to_i}
	rec += 1 if a**2 + b**2 == c**2
	loz += 1 if a == b
end
puts rec, loz