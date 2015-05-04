#English Sentence
text = Hash.new(0)
longest_word = ''
gets.split.each do |word|
	text[word] += 1
	longest_word = word if longest_word.length < word.length
end
puts "#{text.select{|hash, key| key == text.values.max}.keys[0]} #{longest_word}"