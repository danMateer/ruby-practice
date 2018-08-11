puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact (separated by commas): "
redact = gets.chomp.downcase

redact_list = redact.split(", ")
words = text.split(" ")

censored_text = "WITH REDACTIONS: "

words.each do |word|
  if redact_list.include?(word.downcase)
    censored_text.concat("<REDACTED> ")
  else
    censored_text.concat(word + " ")
  end
end

puts censored_text

# TODO: Add logic to ignore puncuation.
