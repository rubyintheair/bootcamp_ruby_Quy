class Person 
  attr_accessor :partner_age
  attr_reader :name, :age 
  def initialize(name, age)
    @name = name 
    @age = age 
  end 

  def partner_youngest_age(age = nil)
    age = @age
    (age / 2) + 7
  end 

  def partner_oldest_age
    (@age - 7) / 2
  end

  def suitable_dating_age_gap
    (partner_youngest_age..partner_oldest_age).to_a
  end

  def unsuitable_age?
    @partner_age < partner_youngest_age
  end
  
  def time_to_wait_for_younger
    if unsuitable_age?
      @temp_1 = @partner_age
      loop do 
        @temp_2 = partner_youngest_age(@age)
        if @temp_1 == @temp_2
          break
        else
          @temp_1 += 1
          @age += 1
        end
      end
    end 
    @temp_1 - @partner_age  
  end 

end

bob = Person.new("Bob",28)
alex = Person.new("Alex", 14)
bob.partner_age = alex.age
puts "Time Bob needs to wait for Alex: #{bob.time_to_wait_for_younger} years"