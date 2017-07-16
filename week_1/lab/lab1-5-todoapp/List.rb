# * Implement a List class. The constructor (initializer) takes 0 or 1 argument and set an items attribute that stores the number of TODO items in a single list:
# * a = List.new
#     a.items # => []
# * b = List.new([Item.new("first"), Item.new("second")])
#     b.items # => two items
# * Implement an add method
# * Bonus: implement a display method

require_relative "Item"
require "colorize"
class List 
  attr_accessor :items
  def initialize(items = [])
    @items = items
  end

  def add(item)
    @items << Item.new(item)
  end

  def display_1
    # items.each_with_index {|item, index| " #{item.done} #{item.name} {index + 1}"}
    @items.each_with_index {|item, index| puts "#{item.done} #{item.name} (#{index + 1})"}
  end

  def display
    @items.each_with_index do |item, index| 
      if item.done?
        puts "#{item.done} #{item.name} (#{index + 1})"
      else
        puts "#{item.done} #{item.name} (#{index + 1})".colorize(:color => :red, :background => :white)
      end
    end
  end

  def done_items
    @items.select {|item| item.done?}
  end

  def undone_items
    @items.select {|item| !item.done? }
  end
  
  
  def display_done
    done_items.each_with_index {|item, index| puts "#{item.done} #{item.name} (#{index + 1})"}
  end
  
  def display_undone
    undone_items.each_with_index {|item, index| puts "#{item.done} #{item.name} (#{index + 1})".colorize :red}
  end
  
  def delete(index)
    @items.delete_at(index)
  end
  
  def check(index)
    @items[index].mark_done!
  end
  
  def uncheck(index)
    @items[index].mark_undone!
  end

  def keyword_items(keyword)
    @items.select {|item| item.find_keyword(keyword)}
  end

  def display_keyword(keyword)
    keyword_items(keyword).each_with_index {|item, index| puts "#{item.done} #{item.name} (#{index + 1})".colorize( :background => :green)}
  end
  
  
  
end

# puts "List A: "
# list_a = List.new 
# puts "Print list_a by puts: "
# puts list_a
# puts "Print list_a by p: "
# p list_a
# puts "Display list_a: "
# list_a.display
# puts "Add \"Learn Git the hard way\" to List A: "
# list_a.add("Learn Git the hard way")
# puts list_a.display


# puts "\n\nList B: "
# list_b = List.new([Item.new("first"), Item.new("second")])
# puts "Print list_b by puts: "
# puts list_b
# puts "Print list_b by p: "
# p list_b
# puts "Display list_b: "
# puts list_b.display


