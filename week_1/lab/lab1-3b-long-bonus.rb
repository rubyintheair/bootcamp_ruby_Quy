puts "\n\nLong Bonus:"

puts "A common way to play darts is to count down from 501: https://en.wikipedia.org/wiki/Darts. In real darts there are many different ways to score, but for the sake of simplicity let's assume you can only get the following points: 50 (bulls eye), 15, and 1." 

puts "Task: Write an optimal_dart_throws method that is passed a score parameter, it returns the optimal dart array (fewest darts) to reach exactly **501**."

puts "
# * Return a sequence of elements for each throw in an array
# * The array should contain all the necessary *elements/darts* required to reach **501**. 
#     * For example, optimal_dart_throws(400) would return [50, 50, 1]

# puts optimal_dart_throws(435)
# # OUTPUT: [50, 15, 1]
# # because 435 + 50 + 15 + 1 = 501
# # that's the fastest way to get to exactly 501
# # note we returned an array!
"


def optimal_dart_throws(number)
  the_rest = 501 - number 
  arr_return = []
  loop do 
    if the_rest >= 50
      arr_return << 50
      the_rest -= 50
    elsif the_rest >= 15 
      arr_return << 15
      the_rest -= 15
    elsif the_rest < 15 && the_rest >= 1 
      arr_return << 1
      the_rest -= 1
    else 
      break
    end 
  end 
  arr_return
end 

def test_dart(number)
  "The result of optimal_dart_throws(#{number}) is #{optimal_dart_throws(number)}"
end 

puts "\n\n"
puts test_dart(40)
puts test_dart(50)
puts test_dart(201)




