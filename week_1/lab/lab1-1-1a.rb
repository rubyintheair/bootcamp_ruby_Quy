name = "Quy Nguyen"
age = 24

puts name
puts "hello " + name
puts "hello #{name}"
puts (name + " ") * 5
puts "#{name} " * 5


1 + 2 + 3 + 4 + 5 + 6

puts "\nHi my name is #{name} and I am #{age} years old"


# Write a program that prints:

# * How many hours are there in a year?
# * How many minutes are there in a decade?
# * How many seconds old are you?
# * If Bob is 1246 million seconds old, how old is Bob in years?


hours_per_year = 24 * 365
minutes_per_year = hours_per_year * 60
minutes_per_decade = minutes_per_year * 100
puts "Minutes_per_year is #{minutes_per_year}"


# * There's a common, if slightly controversial, saying about age differences in dating: You're allowed to date half your age plus seven years (if you're a man) (https://en.wikipedia.org/wiki/Age_disparity_in_sexual_relationships#The_.22half-your-age-plus-seven.22_rule). What is the youngest age in seconds that Bob can date? What is the oldest age Bob can date?
# * Super bonus: If Alex is currently 192720 hours old (too young for Bob), how many hours will it be before Alex can date Bob without violating the n/2+7 formula?


# allowed_age_to_date = (age / 2 ) + 7

puts "Insert Bob's age? "
age = gets.to_i 
allowed_age_to_date = (age / 2 ) + 7
puts "The youngest age that Bob can date is #{allowed_age_to_date} years - old"
allowed_age_to_date_in_sec = allowed_age_to_date * minutes_per_year * 60
puts "The youngest age that Bob can date is #{allowed_age_to_date_in_sec} sec"
older_age_to_date = (age - 7) * 2 
older_age_to_date_in_sec = older_age_to_date * minutes_per_year * 60 
puts "The oldest age that Bob can date is #{older_age_to_date_in_sec} sec"

puts "Insert Alex's by hours"
partner_age_by_hours = gets.to_i 
partner_age_by_years = (partner_age_by_hours / 24) / 365
the_gap_by_years_ = allowed_age_to_date - partner_age_by_years
# the_gap_by_years












