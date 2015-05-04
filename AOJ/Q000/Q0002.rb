#Digit Number
while tmp=gets #stop when gets ^Z (ctrl+Z) in windows or ^D in Unix
	puts tmp.chomp.split(" ").map{ |x| x.to_i }.inject{ |s,i| s+i }.to_s.length
end