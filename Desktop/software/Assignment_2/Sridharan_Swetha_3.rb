class String
def palindrome?
  string= self.downcase.gsub(/[-!' ,;]/,"") #Converts to lower case and removes special characters
  puts string==string.reverse #Checks if it is a palindrome
end
end
"Foo".palindrome?