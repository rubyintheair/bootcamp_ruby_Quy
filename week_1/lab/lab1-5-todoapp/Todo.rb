require_relative "List"

class Todo
  def initialize(file_name)
    @filename = file_name
    @list = List.new
  end

  def list
    @list
  end

  def load_data
    data = File.read(@filename).lines
    @items = data.map {|item| Item.new(item.chomp)}
    @list = List.new(@items)
  end
  
  def show_all
    @list.display
  end

  def show_done
    @list.display_done
  end

  def show_undone
    @list.display_undone
  end

  def add(item) 
    @list.add(item) 
  end

  def delete_item(index)
    @list.delete(index)
    @list
  end

  def check_item(index)
    @list.check(index)
  end
  
  def uncheck_item(index)
    @list.uncheck(index)
  end
  

  
  
  def prompt
    loop do 
      puts "What do you want to do? "
      input = gets.chomp
        if input == "exit"
          break
        elsif input.include?("+")
          # puts "What do you want to add? "
          # new_item = gets.chomp
          add("- [ ] #{input[2..-1]}")
          puts "Display all items: "
          show_all
        elsif input.include?("remove")
          index = input.split(" ")[1].to_i
          delete_item(index - 1)
          puts "Display all items: "
          show_all
        elsif input.include?("uncheck")
          index = input.split(" ")[1].to_i
          uncheck_item(index - 1)
          puts "Display all items: "
          show_all
        elsif input.include?("check")
          p input
          index = input.split(" ")[1].to_i
          check_item(index - 1)
          puts "Display all items: "
          show_all
        elsif input == "done"
          puts "Display done items: "
          show_done
        elsif input == "undone"
          puts "Display undone items: "
          show_undone
        elsif input == "all"
          puts "Display all items: "
          show_all
        end
        
        
        f = File.new("Todo_write.txt",  "w+")
        @list.items.each {|e| f << "- #{e.done} #{e.name}\n"}
        f.close
        
    end
    

  end
  

end



todo_a = Todo.new("Todo_list.txt")
puts todo_a.list
puts todo_a.load_data
puts "Display all items: "
todo_a.show_all
puts "\nDisplay done items: "
todo_a.show_done
puts "\nDisplay undone items: "
todo_a.show_undone
puts "\nPlay prompt: "
todo_a.prompt




