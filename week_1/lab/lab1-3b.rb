# ==================================================
puts "1. Define a bigger method that returns the bigger number between two numbers."

def bigger_number(num_1, num_2)
  num_1 > num_2 ? num_1 : num_2
end 

puts "Bigger number: "
puts bigger_number(2, 5)

puts "\n\n"
puts "2. Define a absolute method that returns the absolute value of a number."
def absolute_number(number)
  number < 0 ? (number * -1) : number
end 

puts "Absolute number: "
puts absolute_number(10)
puts absolute_number(-4)
puts absolute_number(-300)
puts absolute_number(0)

puts "3. Define a are_you_ok? method that returns \"Awesome\""
puts "if the user inputs \"OK\" and returns \"Oh no. You're not OK?\" if they do not. HINT: use gets.chomp to get user input."

def are_you_ok?(answer)
  answer == "OK" ? "Awesome" : "Oh no. You're not OK?"
end 

puts "How do you feel now?"
puts are_you_ok?(gets.chomp)

puts "\nBonus:"

puts "1. Write a sum_odds method"
puts "that finds the total of the odd numbers in an array."

def sum_odds(array)
  array.select {|number| number % 2 == 1}.reduce(0) {|sum, number| sum += number}
end 

puts "\nA sum_odds method that finds the total of the odd numbers: "
puts sum_odds([1,2,3,4])

# # puts sum_odds([1,2,3,4])
# # # OUTPUT: 4 
# # # because 1 + 3 = 4



