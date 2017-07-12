# 1. Define numbers to be an array of numbers from 1 to 10.

# 2. Use the each method of numbers to print numbers from 1 to 10.

# 3. Use the each method on an array of numbers from 1 to 10 and only print numbers that greater than 5.

# 4. Add 11 to the end of the original array numbers

# 5. How do you return the last element in an array? How do you reverse the order of the array so that you get [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]?

# 6. Create an array big_numbers with numbers 100, 200, 300, 400

# 7. Add two arrays together to become all_numbers to have a list of more numbers.

# 8. Sort the array so you get the largest numbers first, smallest number last. (HINT: google "ruby sort array")


# 400, 300, 200, 100, 11, 10, 9, ...

# Bonus:

# 1. How do you get the middle of the array? For [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1] you should get 6 (let's assume that there is always an odd number of elements in our array). 
# 2. How do you find the biggest number in the array? The smallest?
# 3. Use the each method in the array of numbers and only print out the even numbers.
# 4. Use the each method in the array of numbers and only print out the odd numbers.


puts "1. Define numbers to be an array of numbers from 1 to 10."
puts "Puts the other string to this file: "
numbers = (1..10).to_a 
numbers.each {|number| puts number}
numbers.each do |number|
  if number > 5
    puts number
  end 
end

numbers << 11 

numbers[-1]
reverse_numbers = numbers.reverse
p reverse_numbers
puts reverse_numbers

big_numbers = [100, 200, 300, 400]

all_numbers = numbers + big_numbers

all_numbers_sort = all_numbers.sort
all_numbers[all_numbers.size/2] 

def get_middle(array)
  if array.size % 2 == 0
    array[array.size/2 - 1]
  else 
    array[array.size/2]
  end 
end

puts "Test middle array: "
puts get_middle([])
puts get_middle([1])
puts get_middle([1,2])
puts get_middle([1,2,3])
puts get_middle([1,2,3,4,5,6,7,8])
puts get_middle([1,2,3,4,5,6,7])
puts get_middle([1,2,3,4,5,6,7,8,9])
puts get_middle([1,2,3,4,5,6,7,8,9,10])
puts get_middle((1..100).to_a)

max = all_numbers.max
min = all_numbers.min 

def print_odd(array)
  array.each do |each|
    if each % 2 == 1 
      puts each
    end 
  end 
end 

def print_even(array)
  array.each do |each|
    if each % 2 == 0
      puts each
    end 
  end 
end 

puts "Print all odd numbers: "
print_odd(all_numbers)
puts "Print all even numbers: "
print_even(all_numbers)

p all_numbers


# 1. Write a method that takes 3 arguments (first name, middle name, and last name) and returns the full name.

# puts full_name("harley", "michael", "davidson")
# # OUTPUT: "harley michael davidson"

def full_name(first_name, middle_name, last_name)
  full_name = first_name + middle_name + last_name
end 

# 2. Write a say_hi method that returns a greeting to that person.

# puts say_hi("John")
# # OUTPUT: "Yo long time no see, John!!!"

def say_hi(name)
  "Yo long time no see, #{name}!!!"
end 

puts say_hi("Minh")


# 3. Write a to_sentence method that converts an array of string elements to a single string.

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


# 4. Write a method that finds the total of the numbers in an array. The method should combine the elements of the array and return one element, the total.
def total(array)
  array.reduce(0) {|sum, number| sum += number}
end 

# puts total([1,2,3,4])
# # OUTPUT: 10 
# # because 1 + 2 + 3 + 4 = 10

puts "\nTotal of the numbers: "
puts total([1,2,3,4])

# ==================================================
# 1. Define a bigger method that returns the bigger number between two numbers.

# def bigger_number(num_1, num_2)
#   num_1 > num_2 ? num_1 : num_2
# end 

# puts "Bigger number: "
# puts bigger_number(2, 5)

# # 2. Define a absolute method that returns the absolute value of a number.
# def absolute_number(number)
#   number < 0 ? (number * -1) : number
# end 

# puts "Absolute number: "
# puts absolute_number(10)
# puts absolute_number(-4)
# puts absolute_number(-300)
# puts absolute_number(0)

# # 3. Define a are_you_ok? method that returns "Awesome" if the user inputs "OK" and returns "Oh no. You're not OK?" if they do not. HINT: use gets.chomp to get user input.

# # def are_you_ok?(answer)
# #   answer == "OK" ? "Awesome" : "Oh no. You're not OK?"
# # end 

# # puts "How do you feel now?"
# # puts are_you_ok?(gets.chomp)

# # Bonus:

# # 1. Write a sum_odds method that finds the total of the odd numbers in an array.

# def sum_odds(array)
#   array.select {|number| number % 2 == 1}.reduce(0) {|sum, number| sum += number}
# end 

# puts "A sum_odds method that finds the total of the odd numbers: "
# puts sum_odds([1,2,3,4])

# # puts sum_odds([1,2,3,4])
# # # OUTPUT: 4 
# # # because 1 + 3 = 4

# Long Bonus:

# A common way to play darts is to count down from 501: https://en.wikipedia.org/wiki/Darts. In real darts there are many different ways to score, but for the sake of simplicity let's assume you can only get the following points: 50 (bulls eye), 15, and 1. 

# Task: Write an optimal_dart_throws method that is passed a score parameter, it returns the optimal dart array (fewest darts) to reach exactly **501**.

# * Return a sequence of elements for each throw in an array
# * The array should contain all the necessary *elements/darts* required to reach **501**. 
#     * For example, optimal_dart_throws(400) would return [50, 50, 1]

# puts optimal_dart_throws(435)
# # OUTPUT: [50, 15, 1]
# # because 435 + 50 + 15 + 1 = 501
# # that's the fastest way to get to exactly 501
# # note we returned an array!

# _Task 1_: write a method to "viet hoa (https://translate.google.co.uk/?rlz=1C5CHFA_enVN747VN747&um=1&ie=UTF-8&hl=en&client=tw-ob#vi/en/vi%E1%BA%BFt%20hoa)" the first character in a sentence ;-)

rose_line  = "roses are red"
violet_line = "violets are blue"

def viet_hoa_dau_cau(sentence)
  sentence.capitalize
end

puts "[Task 1] the following two must be true:"
puts "Roses are red" == viet_hoa_dau_cau(rose_line)
puts "Violets are blue" == viet_hoa_dau_cau(violet_line)


# _Task 2:_ write a method ****join_sentences(line_1, line_2)**** to join two lines as two sentences and make sure they are capitalized:

# If I test with:

def join_sentences(sentence_1, sentence_2)
  [viet_hoa_dau_cau(sentence_1), viet_hoa_dau_cau(sentence_2)].join("\n")
end 

def join_sentences_1(sentence_1, sentence_2)
  [sentence_1, sentence_2].map {|each| viet_hoa_dau_cau(each)}.join("\n")
end 

puts "Puts join_sentences"
puts join_sentences("this is line 1", "this is line 2")
puts "Puts join_sentences_1"
puts join_sentences_1("this is line 1", "this is line 2")

# I should get:

# This is line 1
# This is line 2


# HINT 1: remember the "\n" (newline character?). You can first join two sentences with "\n".
# HINT 2: try to use the method from Task 1 inside join_sentences.

# _Task 3_: write a method ****make_poem(lines)**** that always capitalize the first character of each line and join all lines to make a poem!

puts "\n[Task 3] make_poem:"

def make_poem(lines = [])
  lines.map {|each| each.capitalize}.join("\n")
end


# Example: when I call puts make_poem([first_line, violet_line]) I'll get this

# Roses are red
# Violets are blue


# Let's make a longer poem:

flower_lines = ["roses are red", "violets are blue", "ruby is fun", "cool so are you"]
puts make_poem(flower_lines)

# # OUTPUT:

# Roses are red
# Violets are blue
# Ruby is fun
# Cool so are you


# Another example:
puts "\nAnother example:"
puts make_poem(["false is false", "true is true", "ruby is fun", "cool so far you"])

# I'll get this:

# False is false
# True is true
# Ruby is fun
# Cool so are you


# HINT: 

# two_lines = ["Ruby is fun", "Cool so are you"].join("\n")

# # => "Ruby is fun\nCool so are you"

# # when you write 'puts two_lines', you'll get

# Ruby is fun
# Cool so are you


