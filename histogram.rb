puts "Please input your text: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |word|
  # TODO: handle more punctuation
  word = word.upcase
  if word.include?(".")
    word = word.chop
  end
  frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, count|
  count
end

frequencies.reverse!

frequencies.each do |word, count|
  puts word + " " + count.to_s
end
