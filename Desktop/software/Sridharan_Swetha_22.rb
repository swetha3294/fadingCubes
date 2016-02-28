def count_words(words)
text = words.downcase.gsub(/[-!' ,;]/," ")
words = text.split
count = Hash.new(0)
words.each { |word| count[word] += 1 }
count = count.sort_by {|a, b| b }
count.reverse!
count.each { |word, frequency| puts word + " => " + frequency.to_s }
end


count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words ("Doo bee doo bee doo")
# => {'doo' => 3, 'bee' => 2}

