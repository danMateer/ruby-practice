def alphabetize(arr, rev=false)
  arr.sort!
  if rev
    arr.reverse!
  else
    return arr
  end
end

words_sample = ["Hey", "No", "Go", "Fine"]

puts alphabetize(words_sample)
