require_relative "file_decoration"
class Item
  attr_accessor :done
  def initialize(name = nil, done: false)
    @name = name
    @done = done
  end

  def done?
    @done == true ? true : false
  end
  
  def display
    if done?
      "[x] #{@name}"
    else
      "[ ] #{@name}"
    end
  end
  
  
end

# 9. Implement an instance method display which displays [ ] or [x] before the item name
# 7. Update the initializer method to take an optional argument done:
# 8. class Item
#       # ...
#       def initialize(name, done: false)
#         # set the done local variable to @done instance variable here
#       end
#       # ...
#     end
puts print_decoration("test 1 - 3")
puts "Task 1 - 3: "
@item = Item.new
p @item.done # should return nil
@item.done = true
p @item.done

# 5. Let's make it more English: define a done? method which returns the same thing as the done reader:
puts print_decoration("test 5 - 6 ")
puts "The return of @item.done?"
@item = Item.new
puts @item.done? # should return false
@item.done = true
puts "The return of @item.done = true"
puts @item.done? # should return true


puts print_decoration("test 8 - 9 ")
@first_item = Item.new("learn Hash")
@sec_item = Item.new("learn Class")
@third_item = Item.new("learn Git")

puts "Test display: "
puts @first_item.display
puts @sec_item.display 
puts @third_item.display
puts "\n\n"
@third_item.done = true
puts @first_item.display
puts @sec_item.display 
puts @third_item.display


# 8. class Item
#       # ...
#       def initialize(name, done: false)
#         # set the done local variable to @done instance variable here
#       end
#       # ...
#     end
# Milestone B2 - TODO Item
# 1. Create an item.rb file and define a class Item in it
# 2. Define the initialize method that takes 1 argument: name of the item
# 3. Define an attribute done so that you can set an item.done to be true:
# 4. item = Item.new
#     puts item.done # should return nil
#     item.done = true
#     puts item.done # should return 'true'
# 5. Let's make it more English: define a done? method which returns the same thing as the done reader:
# 6. item = Item.new
#     puts item.done? # should return false
#     item.done = true
#     puts item.done? # should return true
# 7. Update the initializer method to take an optional argument done:
# 8. class Item
#       # ...
#       def initialize(name, done: false)
#         # set the done local variable to @done instance variable here
#       end
#       # ...
#     end
# 9. Implement an instance method display which displays [ ] or [x] before the item name

