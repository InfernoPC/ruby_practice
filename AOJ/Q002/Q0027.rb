#What day is today?
until gets.chomp == '0 0'
	month, day = $_.split.map{|e| e.to_i}
	puts Time.new(2004,month,day).strftime("%A")
end