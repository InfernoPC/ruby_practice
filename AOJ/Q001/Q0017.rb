def shift(s)
	s.tr!('a-z','b-z'+'a')
end
while gets
	until $_.include?("this") || $_.include?("the") || $_.include?("that")
		shift($_)
	end
	puts $_
end