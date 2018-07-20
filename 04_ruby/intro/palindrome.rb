require 'pry'
# 'oxo'
# 'hannah'
# 'racecar'
# 'a toyota'

exhibit1 = gets.chomp

#predicatemethod
def palindrome?(str)
  cleaned_str = str.downcase.gsub(/[^a-z]/, '')
  if cleaned_str == cleaned_str.reverse
    return true
  else
    return false
  end
end

puts palindrome exhibit1

# binding.pry

