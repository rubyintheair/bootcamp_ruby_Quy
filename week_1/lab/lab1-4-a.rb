###################
def print_decoration(task)
  "\n\n" + "=" * 15 + "  #{task.capitalize}  " + "=" * 15
end
puts print_decoration("task_1")
puts "Task 1: define a class Flower that takes a name and a color"
# - add a writer method to set price for that flower
###################

# NOTE: don't use attr_* stuff yet

class Flower
  attr_accessor :price, :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end

  def to_sentence
    "#{name} are #{color}"
  end
  
  
end

# TEST:

my_flower = Flower.new("roses", "red")
my_flower.price = 10
puts "Print by puts: "
puts my_flower
puts "Print by p: "
p my_flower

your_flower = Flower.new("violets", "blue")
your_flower.price = 11
puts "Print by puts: "
puts your_flower
puts "Print by p: "
p your_flower


# add your own tests

###################
puts print_decoration("Task_2")
puts "Task 2: add a to_sentence method inside the class"
# NOTE: you can "open" the class again and write def to_sentence inside it
###################

puts "\nPrint my flower by puts: "
puts my_flower.to_sentence # => "roses are red"
puts "\nPrint your flower by puts: "
puts your_flower.to_sentence # => "violets are blue"

###################
puts print_decoration("Task_3")
puts "Task 3: write a compare method that takes another flower and compare"
###################

class Flower
  def compare(another_flower)
    if price == another_flower.price
      "Yeah, we are equal ^^"
    else
      price > another_flower.price ? "Yup, I am more expensive." : "Hey I am cheaper!"
    end
  end
end

# TEST:
puts "Example 1: "
puts my_flower.compare(your_flower) # => "Hey I am cheaper!"
puts "Example 2: "
puts your_flower.compare(my_flower) # => "Yup, I am more expensive."

###################
puts print_decoration("task_4")
puts "Task 4: implement a Bouquet class that takes a list of flowers"
# add a add method that add a flower to the a list of flowers
###################

class Bouquet
  attr_reader :flowers
  def initialize(flowers = [])
    @flowers = flowers
  end
  
  def add(flower)
    puts "Great. Added #{flower.name} to the bouquet."
    @flowers << flower
  end
  
end


my_bouquet = Bouquet.new # this will set the list of flowers to be empty
puts "Flowers that I have: #{my_bouquet.flowers}" # this will print:"Flowers that I have: []"

# now let's add more flowers to our bouquet
puts "Print my bouquet by push: \n"
puts my_bouquet.add(my_flower)
puts "Print my bouquet by push: \n"
puts my_bouquet.add(your_flower)

# now check that you have two flowers
puts "Flowers now: #{my_bouquet.flowers}"

# OF COURSE, we can start a new bouquet with more than 0 flowers

coderschool_bouquet = Bouquet.new([my_flower, your_flower])

puts print_decoration("task_4")
###################
puts "Task 4: add a total_price method in Bouquet class that returns the total price of all flowers in it"
###################
class Bouquet
  def total_price
    @flowers.reduce(0) {|sum, flower| sum += flower.price}
  end
end

puts "The total price is: #{coderschool_bouquet.total_price}"





