require_relative "List"
require "colorize"
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

  def show_keyword(keyword)
    @list.display_keyword(keyword)
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

  def instruction
    puts "="*10 + "  Guideline  " + "="*10
    puts "="*10 + " + task_content: add new task "  + "="*10
    puts "="*10 + " remove index: remove task at index order in list "  + "="*10
    puts "="*10 + " all  | done | undone: display all/done/undone tasks "  + "="*10
    puts "="*10 + " check index | uncheck index: check/uncheck index task "  + "="*10
    puts "="*10 + " save -f: Save and print current file to another file "  + "="*10
  end
  

  def get_input_and_exit(input)
    if input == "exit"
      "exit"
    elsif input.include?("+")
      # puts "What do you want to add? "
      # new_item = gets.chomp
      add("- [ ] #{input[2..-1]}")
      puts "Display all items: "
      show_all
    elsif input.include?("remove")
      index = input.split(" ")[1].to_i
      trash = File.new("Trash.txt",  "a")
      @trash_item = @list.items[index - 1]
      trash << "- #{@trash_item.done} #{@trash_item.name}\n"
      trash.close
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
    elsif input.include?("find")
      puts "Implement find keyword methods:"
      puts "Display item with keyword #{input[5..-1]}"
      show_keyword(input[5..-1])
    elsif input.include?("save -f")
      f = File.new("#{input[8..-1]}.txt",  "a")
      @list.items.each {|e| f << "- #{e.done} #{e.name}\n"}
      f.close
    end
  end
  
  
  def prompt
    puts "What do you want to do?"
    puts instruction
    @input = gets.chomp
    loop do 
      if @input == "exit"
        puts "Good bye!!!"
        break
      else
        get_input_and_exit(@input)
      end
      puts "What do you want to do NEXT? " 
      @input = gets.chomp
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




