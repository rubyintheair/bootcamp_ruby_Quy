
class Item
  attr_accessor :name, :done
  attr_reader :item, :test
  def initialize(name, done = false)
    @test = name
    @name = name[6..-1]
    @done = name[2..4]
  end
  
  def done?
    @done[1] == "x"
  end

  def undone?
    @done[1] == " "
  end
  
  
  def mark_done!
    @done[1] = "x"
    "- #{@done} #{@name}"
  end

  def mark_undone!
    @done[1] = " "
    "- #{@done} #{@name}"
  end
  
  
  def display
    # "#{@done}:  #{name}"
    "- #{@done} #{@name}"
  end

  def find_keyword(keyword)
    @name.include?(keyword) #return true or false
  end
  
  
  def self.new_from_line(line) #Ham nay se tra ve 1 cai dia chi
    name = line[6..-1]
    done = line[3] == "x" 
    Item.new(name, done)
  end
end

# new_item = Item.new("- [ ] Learn Class")
# puts "Print by puts: "
# puts new_item
# puts "\nPrint by p: "
# p new_item

# puts new_item.done?
# puts "Before checking as done: "
# puts new_item.display
# new_item.mark_done! 
# puts "After checking as done: "
# puts new_item.done?
# puts new_item.display
# puts new_item.mark_undone!


# test_item = Item.new_from_line("- [x] Learn Git")
# puts "Print test_item.name by puts: "
# puts test_item.name
# puts "Print test_item.done by puts: "
# puts test_item.done
# puts test_item.display



