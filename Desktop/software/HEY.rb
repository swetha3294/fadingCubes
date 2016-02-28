puts "Get string:"
string= gets.chomp.downcase.gsub(/[-!' ,;]/,"")
print string==string.reverse