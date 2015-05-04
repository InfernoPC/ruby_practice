#Circles Intersection
gets.to_i.times do
	xa, ya, ra, xb, yb, rb = gets.split.map{|e| e.to_f}
	ab = ((xa-xb)**2 + (ya-yb)**2)**0.5
	if ab > ra + rb
		puts '0'
	else
		if ab+rb<ra
			puts '2'
		elsif ab+ra<rb
			puts '-2'
		else
			puts '1'
		end
	end
end
