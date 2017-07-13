puts "Task 1:_ write a method ****to_words**** to split a sentence into an array of words. HINT: look up the split method for Ruby string: https://apidock.com/ruby/String/split"

def to_words(sentence)
  sentence.split
end

puts "\nPrint by puts: "
puts to_words("roses are red")
puts "\nPrint by p: "
p to_words("roses are red")
# => ["roses", "are", "red"]
puts "\nPrint by puts: "
puts to_words("ruby is fun")
puts "\nPrint by p: "
p to_words("ruby is fun")

# => ["ruby", "is", "fun"]


puts "Task 2:_ write a method ****backwards**** that reverse the words in a sentence."
def backwards(sentence)
  sentence.split.reverse.join(" ")
end

puts "\nPrint by puts: "
puts backwards("ruby is fun")
puts "\nPrint by p: "
p backwards("ruby is fun")
# # => "fun is ruby"
puts "\nPrint by puts: "
puts backwards("violets are blue")
puts "\nPrint by p: "
p backwards("violets are blue")
# # => "blue are violets"


# HINT: split into words, then reverse the array.

puts "Task 3:_ write a method ****make_reverse_poem**** that make a reverse poem:"
rose_line = "roses are red"
violet_line = "violets are blue"

def make_reverse_poem(array)
  array.map {|e| backwards(e)}
end

puts "Example 1: "
puts make_reverse_poem([rose_line, violet_line])

# You'll get:

# Red are roses
# Blue are violets


# Or a longer example:
puts "\nExample 2: "
puts make_reverse_poem([rose_line, violet_line, "ruby is fun", "cool so are you"])

# # OUTPUT:

# Red are roses
# Blue are violets
# Fun is ruby
# You are so cool

