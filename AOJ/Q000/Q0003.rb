#Is it a Right Triangle?
class Triangle
	def initialize(x)
		@x=x[0]
		@y=x[1]
		@z=x[2]
	end
	def is_right?
		return true if @x**2 + @y**2 == @z**2
		return true if @y**2 + @z**2 == @x**2
		return true if @z**2 + @x**2 == @y**2
		return false
	end
end

gets.chomp.to_i.times do 
	puts Triangle.new( gets.chomp.split(" ").map{ |x| x.to_i } ).is_right? ? "YES" : "NO" 
end