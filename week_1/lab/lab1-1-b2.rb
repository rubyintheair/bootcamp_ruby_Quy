puts "1. Write a method that takes 3 arguments (first name, middle name, and last name)" 
puts "and returns the full name."

# puts full_name("harley", "michael", "davidson")
# # OUTPUT: "harley michael davidson"

def full_name(first_name, middle_name, last_name)
  full_name = first_name + middle_name + last_name
end 

puts "\n\n"
puts "2. Write a say_hi method that returns a greeting to that person."

# puts say_hi("John")
# # OUTPUT: "Yo long time no see, John!!!"

def say_hi(name)
  "Yo long time no see, #{name}!!!"
end 

puts say_hi("Minh")


puts "\n\n"
puts "3. Write a to_sentence method that converts"
puts "an array of string elements to a single string."

# puts to_sentence(["Mariah", "Elton John", "Adele"])
# # OUTPUT: "Mariah, Elton John, and Adele"

def to_sentence_1(array)
  array.join(", ")
end 

def to_sentence(array)
  if array.size > 2
    a = (array[0..array.size - 2]).join(", ")
    a + " and " + array[-1]
  elsif array.size == 2
    array.join(" and ")  
  else 
    array
  end 
end 

puts to_sentence_1(["A", "B", "C", "D", "E"])
puts to_sentence(["A", "B", "C", "D", "E"])
puts to_sentence(["A", "B"])
puts to_sentence(["A", "B", "C"])
puts to_sentence(["A", "B", "C", "D"])


# puts to_sentence(["A", "B", "C", "D", "E"])
# # OUTPUT: "A, B, D, and E"

# puts to_sentence(["One"])
# # OUTPUT: "One"
puts to_sentence(["One"])

puts "\n\n"
puts "4. Write a method that finds the total of the numbers in an array. "
puts "The method should combine the elements of the array and return one element, the total."
def total(array)
  array.reduce(0) {|sum, number| sum += number}
end 

# puts total([1,2,3,4])
# # OUTPUT: 10 
# # because 1 + 2 + 3 + 4 = 10
puts "\n\n"
puts "\nTotal of the numbers: "
puts total([1,2,3,4])