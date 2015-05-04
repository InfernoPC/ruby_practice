#A Point in a Triangle
def same_side?(x, y, z, p)
	a, b, c = x[1]-y[1], y[0]-x[0], x[0]*y[1]-x[1]*y[0]
	(a*z[0]+b*z[1]+c)*(a*p[0]+b*p[1]+c)>0
end
def inside_triangle?(x, y, z, p)
	same_side?(x,y,z,p) && same_side?(y,z,x,p) && same_side?(z,x,y,p)
end
while gets
	i = $_.chomp.split(" ").map{|i| i.to_f}
	puts inside_triangle?(i[0..1], i[2..3], i[4..5], i[6..7]) ? "YES" : "NO"
end