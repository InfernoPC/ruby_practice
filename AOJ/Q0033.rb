#Ball
gets.to_i.times do
	pipe_a = 0
	pipe_b = 0
	yes = true
	gets.split.map{|x| x.to_i}.each do |e|
		if pipe_a == 0
			pipe_a = e
		elsif pipe_b == 0
			e > pipe_a ? pipe_a = e : pipe_b = e
		else
			if pipe_a > pipe_b
				e > pipe_a ? pipe_a = e : (e > pipe_b ? pipe_b = e : yes = false)
			else
				e > pipe_b ? pipe_b = e : (e > pipe_a ? pipe_a = e : yes = false)
			end
		end
	end
	puts yes ? "YES" : "NO"
end