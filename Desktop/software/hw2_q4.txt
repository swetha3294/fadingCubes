class Enumerable
def palindrome?(string)
  puts string==string.reverse #Checks if it is a palindrome
end

palindrome?("A man, a plan, a canal -- Panama")  #=> true
palindrome?("Madam, I'm Adam!")  # => true
palindrome?("Abracadabra") # => false