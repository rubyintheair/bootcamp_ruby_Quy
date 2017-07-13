# Use the terminal and learn to use the .to_sym and .to_s methods.

# 1. Define method symbolize that converts an old task that uses string as keys into a new task that uses symbols as keys
# 2. 
old_task = {"name" => "learn hash", "priority" => 1}

puts "name".to_sym
puts old_task.keys[0].to_sym

# puts old_task.map {|each| (each[0].to_sym => each[1]) }

def symbolize(old_task)
  ret = {}
  key_a = old_task.keys[0].to_sym
  key_b = old_task.keys[1].to_sym
  ret[key_a] = old_task.values[0]
  ret[key_b] = old_task.values[1]
  ret
end

puts "\nSymbolize original: "    
puts symbolize(old_task) 

def symbolize_1(old_task)
  ret = {}
  ret[old_task.keys[0].to_sym] = old_task.values[0]
  ret[old_task.keys[1].to_sym] = old_task.values[1]
  ret
end

puts "\nSymbolize 1: "    
puts symbolize_1(old_task) 
# #=> {:name => "learn hash", :priority => 1}
#     # NOTE: the above is the same as {name: "learn hash", priority: 1}
# 3. Define method symbolist that maps a list of “old tasks” to an array of “new tasks”
def symbolist(tasks)
  tasks.map {|task| task.to_a}
  tasks.to_a
end
    
puts "\nSymbolist by p: "    
p symbolist(old_task)
# 5. Discuss: if you have an array of 100 tasks, what's the advantage of using symbols has task keys versus using strings as task keys.

