require "bundler/setup"
Bundler.require

puts "Hello world".colorize(:color => :red)

puts "Hey I am in test"

puts "This should be blue".colorize(:blue)
puts "Available colors: #{String.colors}"

rows = []
rows << ['One', 1].map {|each| "#{each}".colorize(:blue)}
rows << ['Two', 2].map {|each| each.to_s.colorize(:blue)}
rows << ['Three', 3].map {|each| each.to_s.colorize(:blue)}

table = Terminal::Table.new(rows: rows)
table
  
rows.map {|each| each[0].to_s.colorize(:blue)}

table = Terminal::Table.new(rows: rows)
puts table


100.times do
  name = Faker::Name.name
  puts name
end
