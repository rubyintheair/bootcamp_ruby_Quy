puts "Task 1_: write a method to viet hoa "

rose_line  = "roses are red"
violet_line = "violets are blue"

def viet_hoa_dau_cau(sentence)
  sentence.capitalize
end

puts "\n\n"
puts "[Task 1] the following two must be true:"
puts "Roses are red" == viet_hoa_dau_cau(rose_line)
puts "Violets are blue" == viet_hoa_dau_cau(violet_line)

puts "\n\n"
puts "Task 2:_ write a method ****join_sentences(line_1, line_2)**** to join two lines as two sentences and make sure they are capitalized:"

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

puts "\n\n"
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
