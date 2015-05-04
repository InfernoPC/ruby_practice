#Circumscribed Circle of a Triangle
def delta_3d(m)
	(m[0][0]*m[1][1]*m[2][2]+m[0][1]*m[1][2]*m[2][0]+m[0][2]*m[1][0]*m[2][1])-(m[0][2]*m[1][1]*m[2][0]+m[0][1]*m[1][0]*m[2][2]+m[1][2]*m[2][1]*m[0][0])
end
def out_center(p)
	t_x = [[p[0]**2+p[1]**2,p[1],1], [p[2]**2+p[3]**2,p[3],1], [p[4]**2+p[5]**2,p[5],1]]
	t_y = [[p[0],p[0]**2+p[1]**2,1], [p[2],p[2]**2+p[3]**2,1], [p[4],p[4]**2+p[5]**2,1]]
	t = [[p[0],p[1],1], [p[2],p[3],1], [p[4],p[5],1]]
	[delta_3d(t_x)/(delta_3d(t)*2) , delta_3d(t_y)/(delta_3d(t)*2)]
end
def dist(x,y)
	Math.sqrt((x[0]-y[0])**2+(x[1]-y[1])**2)
end
gets.chomp.to_i.times do
	p = gets.chomp.split(" ").map{ |x| x.to_f }
	center = out_center(p)
	r = dist(center,p)
	puts "#{sprintf("%.3f",center[0].round(3))} #{sprintf("%.3f",center[1].round(3))} #{sprintf("%.3f",r.round(3))}" 
end