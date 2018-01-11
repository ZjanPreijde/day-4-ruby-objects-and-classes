require_relative 'cook'
require_relative 'restaurant'


cook1 = Cook.new('Mike', [], [], 'on duty')
cook2 = Cook.new('Arno', [], [], 'on duty')
cook3 = Cook.new('Matthew', [], [], 'on duty', true)
cook4 = Cook.new('Rembert', [], [], 'on duty')
cook5 = Cook.new('Wouter', [], [], 'on duty')

restaurant = Restaurant.new("Pizza Palace", 4)
restaurant.add_cook(cook1)
restaurant.add_cook(cook2)
restaurant.add_cook(cook3)
restaurant.print_cooks
puts "- " * 20
restaurant.add_cook(cook4)
restaurant.print_cooks
puts "- " * 20
restaurant.add_cook(cook5)
restaurant.print_cooks
puts "- " * 20


if false
  my_cook.print_details
  puts "Adding secret \"Microwaves are men's best friend\""
  my_cook.add_secret("Microwaves are men's best friend")
  my_cook.print_details
  puts "- " * 20
  new_dish = "Macaroni and cheese"
  puts "Adding dish \"#{new_dish}\" ..."
  my_cook.make(new_dish)
  my_cook.print_details
  puts "- " * 20
  new_dish = "Boeuf Bourguignon"
  puts "Adding dish \"#{new_dish}\" ..."
  my_cook.make(new_dish)
  my_cook.print_details
  puts "- " * 20
  puts "cook is on duty?"
  puts my_cook.on_duty?
  puts my_cook.activity
  puts my_cook
  puts "OK, we'll finish this later "
  puts "- " * 20
end
