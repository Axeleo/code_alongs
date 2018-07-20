# HOW TO RUN RUBY 
# ruby intro.rb

# DATA TYPES
[] # array
{} # hash
#booleans, number, strings


# SCOPE

total = 12 # local

puts(total)

# FLOW CONTROL

## CONDITIONALS

student_count = 18

if student_count > 20
  puts('GA')
  puts('2 TAs')
elsif student_count < 10
  puts('ypu are on your own')
else 
  puts('they already pay me too much')
end

## LOOPS

5.times do 
  puts('hello')
end

count = 0
while count < 5
  puts('hello')
  count += 1
end

languages = ['js', 'ruby']

languages.each do |elem|
  puts(elem)
end