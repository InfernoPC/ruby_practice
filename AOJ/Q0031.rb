#Weight
while gets
	step = 1
	output = Array.new
	$_.to_i.to_s(2).reverse.split(//).each do |element|
		output.push(step) if element == "1"
		step *= 2
	end
	puts output*" "
end