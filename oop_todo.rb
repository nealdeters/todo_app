require_relative "list"
require_relative "task"

# Create list
list = List.new
my_purple_hippo_list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat"))
list.add_task(Task.new("Take out trash"))
list.add_task(Task.new("Mow the lawn"))

# Print out the second task in the list
puts "Second task:"
#puts list.tasks[1].password
puts list.tasks[1]
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!
p list.tasks[0]
list.tasks[0].toggle_complete!
p list.tasks[0]
list.tasks[0].toggle_complete!
p list.tasks[0]

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
# puts list.incomplete_tasks

puts list.number_of_incomplete_tasks
p list
puts "I'm gonna delete you!"
list.delete_complete_tasks
p list
list.tasks.last.priority = 5
list.tasks.last.name = "clean the cat box"
p list