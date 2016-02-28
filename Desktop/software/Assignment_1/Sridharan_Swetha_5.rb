
def combine_anagrams(words)
string = words.group_by{ |word| word.chars.sort }.values
string.each { |string| puts "#{string}" }
end

combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])

