# Write code for the following:

puts "1. Set your name to a variable named name"
name = "Quy"
puts "My name is: #{name}"

puts "\n\n"
puts "2. Print your name 50 times"
puts name * 50

puts "\n\n"
puts "3. Set your first name to first_name, set your last name to last_name, and set full_name to be your full name based on first_name and last_name"
first_name = "Quy"
last_name = "Nguyen"
full_name = first_name + " " + last_name
puts "My full_name is: #{full_name}"

puts "\n\n"
puts "4. Print “What's your name”, then let user enters their name (e.g. “John”)"
puts "and print “Welcome, John” (Hint: use gets)"
puts "What's your name? "
user_name = gets.chomp
puts "Welcome, #{user_name}"

puts "\n\n"
puts "5. Ask the user for their first name and their last name separately, "
puts "then print “Your full name is...” together with their full name."
puts "What is your first name? "
user_first_name = gets.chomp
puts "What is your last name? "
user_last_name = gets.chomp
user_full_name = user_first_name + " " + user_last_name
puts "Your full name is #{user_full_name}"

puts "\n\n"
puts "Bonus:"

puts "* Capitalize the first letter of each name."
puts "So if the user inputs “bob loblaw”, your method will say “Hello Bob Loblaw”."
user_full_name = user_full_name.split.map {|e| e.capitalize}.join(" ")
puts "Hello #{user_full_name}"
puts "\n"
puts "* Sometimes computer programming feels like an arms race against your users;"
puts "they'll come up with interesting ways to break your program. For this one, try and capitalize the name correctly as Firstname Lastname, no matter what input the user gives." 
puts "For example, even if the user says their name is mYstERIoUS hACKeR,"
puts "your full_name function should return Mysterious Hacker"

user_full_name = user_full_name.split.map {|e| e.downcase.capitalize}.join(" ")
puts "Hello #{user_full_name}"
