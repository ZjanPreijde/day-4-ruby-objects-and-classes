# Require class files
require_relative "oven"
require_relative "pizza"

# Init 2 ovens
ovens = []
ovens << Oven.new()
ovens << Oven.new()

# Init tracking
pizzas_started = 0
pizzas_baked = 0
pizzas_to_bake = 28 # Multiple of 6 is to easy

# Objective :
#  Bake <pizzas_to_bake> pizzas in 2 ovens,
#   bake time 12 (minutes),
#   max 3 pizzas per oven
# Bake !<pizzas_to_bake>%6 = 0 for more thorough check
# To make it more interesting,
#  - limit max pizza's to add per oven to 1 per loop
#  - max pizza's to add per oven to randomize 1..3 per loop
#  - vary max nr of pizzas per oven

# Start loop
loops = 0
puts "Bake #{pizzas_to_bake} pizza's ..."
while pizzas_baked < pizzas_to_bake
  print "-> Loop #{loops}, started #{pizzas_started}, done: #{pizzas_baked}\n\t"
  ovens.each_with_index do |oven, index|
    # Remove done pizza's,
    #  increase number of pizza's done
    pizzas_baked += oven.remove_done_pizzas()
    while oven.room_in_oven?
      # Add pizza's if still needed
      break if pizzas_started >= pizzas_to_bake
      oven.add_pizza(Pizza.new(0))
      pizzas_started += 1
    end
    # Increase baking time of pizza's in over
    oven.add_baking_time
    print "\tOven #{index + 1}: " + oven.to_s.join(', ')
  end
  print "\n"

  # Make sure we don't loop forever
  break if loops > 200
  # Wait 1 second
  sleep(1)

  loops += 1
end
puts "Pizza's to bake #{pizzas_to_bake}"
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
