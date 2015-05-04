#Maximum Sum Sequence
until gets.to_i == 0
	mss = Array.new(1,0)
	max = -100000
	sum = 0
	negtive_max = -100000
	$_.to_i.times do 
		sum += gets.to_i
		sum = 0 if sum < 0
		max = sum if max < sum
		negtive_max = $_.to_i if negtive_max < $_.to_i
	end
	puts negtive_max < 0 ? negtive_max : max
end