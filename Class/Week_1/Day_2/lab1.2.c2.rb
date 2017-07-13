# 1. Use each_with_index, define a to_tasks method so that it's easier to create multiple tasks. Notice that it's easier to come up with 10 tasks now compared to my_tasks in Milestone C1?
def to_tasks(names)
    @array = []
    names.each_with_index {|name, index| @array << {"name" => name, "priority" => index + 1}}
    @array   
end

puts "\nPrint to_task(names) by puts - use each with index: "    
puts to_tasks(["learn symbol", "review string"])
#     # should return:
#     [{"name" => "learn symbol", "priority" => 1},
#      {"name" => "review string", "priority" => 2}]

# 3. Use map.with_index and improve the to_tasks method. HINT: you only need 1 line of code.
def to_tasks_map(names)
    names.map.with_index {|name, index| {"name" => name, "priority" => index + 1}}
end
puts "\nPrint to_task_map(names) by puts: "
puts to_tasks_map(["learn symbol", "review string"])
# 4. However, we now want to create 10 tasks with random priority between 1-10, not just 1-10 
def to_tasks_random(names)
    names.map.with_index {|name, index| {"name" => name, "priority" => index + 1}}.shuffle
end
    
#     ## OUTPUT
to_task =
    [{"name"=>"learn symbol", "priority"=>1}, 
     {"name"=>"review string", "priority"=>2}, 
     {"name"=>"take a break", "priority"=>3}, 
     {"name"=>"make code cleaner", "priority"=>4}]

puts "\nPrint to_task_random: "    
puts to_tasks_random(to_task)
#     to_task_random==
#     [{"name"=>"learn symbol", "priority"=>4}, 
#      {"name"=>"review string", "priority"=>2}, 
#      {"name"=>"take a break", "priority"=>1}, 
#      {"name"=>"make code cleaner", "priority"=>3}]
# 6. 