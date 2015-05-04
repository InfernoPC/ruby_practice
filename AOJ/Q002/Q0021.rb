#Parallelism

#Wrong Answer 
=begin
require 'bigdecimal'
gets.to_i.times do
	s=gets.split.map(&method(:BigDecimal))
	#puts (s[0]-s[2])*(s[5]-s[7]) == (s[4]-s[6])*(s[1]-s[3]) ? "YES" : "NO"
	puts (s[0]-s[2])/(s[1]-s[3]) == (s[4]-s[6])/(s[5]-s[7]) ? "YES" : "NO"
end
=end

#Success
require 'bigdecimal'
gets.to_i.times{
    a,b,c,d,e,f,g,h=gets.split.map(&method(:BigDecimal))
    puts (c-a)*(h-f)-(d-b)*(g-e)==0? "YES" : "NO"
}