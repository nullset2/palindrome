# Pre-entrevista Icalialabs
# Alfredo Gallegos, 2015

require "byebug"

def isPalindrome(str)
  # take the string received... since we only care about the interpreted string and not the actual characters
  # we remove spaces and non-alphanumerical characters
  # then we generate an array of chars from the string
  string_array = str.downcase.gsub(" ", '').gsub(/\W+/, '').split("") # generates a list of chars
  
  # isolate length values from the list and initialize an iterator --useful to run through the list without reverse()
  # from the ruby standard library
  n = string_array.length
  j = 0
  
  # create an auxiliary nil-initialized list of size n, equal to the inputted list 
  string_array_rev = Array.new(n)

  # run through the input string array and add the characters from start to the end in REVERSE order to the aux list
  string_array.each do |i|
    string_array_rev[n - j - 1] = i
    j += 1
  end

  # and compare the objects - are the objects the same?
  (string_array == string_array_rev) ? true : false
end

puts isPalindrome(gets.chomp)