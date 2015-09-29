#Pre-entrevista Icalialabs
#Alfredo Gallegos, 2015

def isPalindrome str
  str_stripped = str.downcase.gsub(" ", '').gsub(/\W+/, '')
  (str_stripped == str_stripped.reverse) ? (return true) : (return false)
end

string = gets.chomp

puts isPalindrome(string)
