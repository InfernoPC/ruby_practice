#Simultaneous Equation
def clean_float(f)
	f.zero? ? 0 : f
end
def find_x(s)
	clean_float((s[2]*s[4]-s[1]*s[5])/(s[0]*s[4]-s[1]*s[3]))
end
def find_y(s)
	clean_float((s[0]*s[5]-s[2]*s[3])/(s[0]*s[4]-s[1]*s[3]))
end
while tmp = gets
	tmp=tmp.chomp.split(" ").map{ |x| x.to_f }
	puts "#{sprintf("%.3f",find_x(tmp).round(3))} #{sprintf("%.3f",find_y(tmp).round(3))}" 
end