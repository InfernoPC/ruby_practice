#Dropping Ink

def drop_ink(paper, x, y, size)
	paper[[x,y]] += 1
	paper[[x-1,y]] += 1 if x-1 >= 0
	paper[[x+1,y]] += 1 if x+1 <= 9
	paper[[x,y-1]] += 1 if y-1 >= 0
	paper[[x,y+1]] += 1 if y+1 <= 9

	if size >= 2
		paper[[x-1,y-1]] += 1 if x-1 >= 0 && y-1 >= 0
		paper[[x-1,y+1]] += 1 if x-1 >= 0 && y+1 <= 9
		paper[[x+1,y-1]] += 1 if x+1 <= 9 && y-1 >= 0
		paper[[x+1,y+1]] += 1 if x+1 <= 9 && y+1 <= 9
	end

	if size >= 3
		paper[[x-2,y]] += 1 if x-2 >= 0
		paper[[x+2,y]] += 1 if x+2 <= 9
		paper[[x,y-2]] += 1 if y-2 >= 0
		paper[[x,y+2]] += 1 if y+2 <= 9
	end
	paper
end

paper = Hash.new(0)

while gets
	x, y, size = $_.split(",").map{|x| x.to_i}
	paper = drop_ink(paper, x, y, size)
end
puts 100-paper.length, paper.values.max


#tips
#(3..5).to_a.product([2]).collect { |index| a[index] }
#[2].product((3..5).to_a).collect { |index| a[index] }