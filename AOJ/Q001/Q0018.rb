#Sorting Five Numbers
puts gets.chomp.split(" ").map{|i| i.to_i}.sort!.reverse!.join(" ")