# Milestone A1 - Review Array

# Create an array called singers that contain the names of the singers you like.

# - How do you print the first element in that array?
# - How do you print the last element in that array?
# - How do you print the middle element in that array?

# You can use numbers to "index" into a array, meaning you can use numbers to find out what's in arrays. 

# Remember: you can **only** use numbers to get items out of a array.

# Well, you have singers.first and singers.last methods. But it's just index 1 and -1, right?

# Remember "square bracket"? numbers[ .... ]
# For Array, inside that .... you can only put numbers.

# But for Hash, you can use other things as index. Let's just use string for now:

fav_singers = ["Minh Nhat", "Ngoc Quy", "Dong Nhi", "Justin", "Ho Ngoc Ha"]
fav_singers.each do |e|
    puts "element: #{e}"
end

puts fav_singers[0] 
puts fav_singers[1]
puts fav_singers[2]
puts fav_singers[3]
puts fav_singers[4]
    
puts fav_singers[-1]    
puts fav_singers[-1]


