require_relative "oven"
require_relative "pizza"



ovens = []
ovens << Oven.new()
ovens << Oven.new()

pizzas_baked = 0
loops_done = 0
loop do
  ovens.each_with_index do |oven, index|
    puts "Pizza's baked #{pizzas_baked} \t\tChecking oven #{index + 1} ..."
    pizzas_baked += oven.remove_done_pizzas()
    break if pizzas_baked >= 30
    while oven.room_in_oven?
      puts "\tAdding pizza ..."
      oven.add_pizza(Pizza.new())
    end
    puts "\tAdding baking time for oven ..."
    oven.add_baking_time
  end
  break if pizzas_baked >= 30
  loops_done += 1
  break if loops_done > 200
  sleep(1)
end
puts "Pizza's baked #{pizzas_baked}"

if false
  puts "Room in oven? : #{oven.room_in_oven?}"
  puts "Adding pizza ..."
  oven.add_pizza(pizza1)
  puts "Room in oven? : #{oven.room_in_oven?}"
  puts "Adding pizza ..."
  oven.add_pizza(pizza2)
  puts "Room in oven? : #{oven.room_in_oven?}"
  puts "Adding pizza ..."
  oven.add_pizza(pizza3)
  puts "Room in oven? : #{oven.room_in_oven?}"
  puts "Adding pizza ..."
  oven.add_pizza(pizza4)
  puts "Room in oven? : #{oven.room_in_oven?}"
end
