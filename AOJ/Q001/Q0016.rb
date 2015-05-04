class Float
	def to_ra
		self*Math::PI/180
	end
end
x, y, deg=0.0, 0.0, 90.0
until gets.chomp == "0,0" do 
	step = $_.chomp.split(",").map{|n| n.to_f}
	x += step[0]*Math.cos(deg.to_ra)
	y += step[0]*Math.sin(deg.to_ra)
	deg -= step[1]
end
puts x.to_i,y.to_i