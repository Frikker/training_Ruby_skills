def count_words(string)
  string_array = string.gsub(/[^\p{L}\s\d]/,'').downcase.split
  hash = {}
  string_array.each do |word|
    if hash.key?(word)
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  hash
end