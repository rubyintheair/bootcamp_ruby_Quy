# Milestone C1 - Representing TODO tasks

# Run irb and practice creating a hash to present a task:

# my_tasks = {"name" => "learn hash", "priority" => 1}
my_tasks = [
    {"name" => "learn hash", "priority" => 1},
    {"name" => "learn if else", "priority" => 4},
    {"name" => "learn method", "priority" => 5},
    {"name" => "learn each", "priority" => 3},
    {"name" => "learn map", "priority" => 4},
    {"name" => "learn todo_list", "priority" => 1},
    {"name" => "learn loop", "priority" => 9},
    {"name" => "learn variable", "priority" => 9},
    {"name" => "learn numbers", "priority" => 2},
    {"name" => "learn array", "priority" => 7}
]
# Note that I use priority numbers to indicate how important a task is. Priority 1 is the most important.

# Tasks: 

# 1. Define a my_tasks local variable that is an array of 10 different tasks. Try to use a few different priority numbers for the tasks.
# 2. Define method most_important that takes a list of tasks and returns the task with the highest importance:
def most_important(tasks)
  min_val_index = tasks.map {|task| task["priority"]}.each_with_index.min
  tasks[min_val_index[1]]
end

puts "Print most_important thing: "
puts most_important(my_tasks)

def some_most_important(tasks)
  min_val_index = tasks.map {|task| task["priority"]}.min 
  tasks.select {|task| task["priority"] == min_val_index}
end

puts "\nPrint some most_important things which have the same priority: "
puts some_most_important(my_tasks)

# 4. Define method sorted that takes a list of tasks and returns a new list of tasks that have the same tasks but in the sorted order: most important tasks first:
def sorted(tasks)
   tasks.sort_by {|task| task["priority"]}
end
    
my_sorted_tasks = sorted(my_tasks)
puts "Sort tasks: "
puts my_sorted_tasks
# 6. Define me
# thod names_only that returns the names of all the tasks and ignore the priorities:
def names_only(tasks)
  tasks.map {|task| task["name"]}
end
    
puts "\nTask names: #{names_only(my_tasks)}"
# 8. Define a method to_task which takes a task name and a priority and return a task hash:
# 9.# default priority is 1 if the argument is missing
def to_task(name, priority = 1)
  {"name" => name, "priority" => priority}
end

puts to_task("implement to_task")

#     to_task("implement to_task") # => {"name" => "implement to_task", "priority" => 1}

