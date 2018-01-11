testing_class_oven = false
# Uncomment next line to start testing
# testing_class_oven = true

class Oven
  attr_accessor :pizzas
  MAX_PIZZAS = 3

  def initialize(pizzas = [])
    @pizzas = pizzas
  end

  def to_s
    # Array with pizza info
    result = []
    @pizzas.each_with_index do |pizza, index|
      result << "Pizza #{index + 1} (#{pizza.cook_time}/#{pizza.done_time} min)"
    end
    return result
  end

  def room_in_oven?
    # Room left in oven
    @pizzas.length < MAX_PIZZAS
  end

  def add_pizza(pizza)
    # Add pizza object to array, check room in caller
    @pizzas << pizza
    return 1
  end

  def add_baking_time
    # Add baking time to pizzas
    @pizzas.each do |pizza|
      pizza.add_to_cooktime
    end
  end

  def remove_done_pizzas
    # Check for done pizzas
    done_pizzas = []
    @pizzas.each do |pizza|
      if pizza.pizza_done?
        done_pizzas << pizza
      end
    end
    done_pizzas.each do |pizza|
      remove_pizza(pizza)
    end
    return done_pizzas.length
  end

  def remove_pizza(pizza_to_remove)
    # remove pizza object from array
    @pizzas.delete(pizza_to_remove)
    # @pizzas.reject do |pizza|
    #   pizza == pizza_to_remove
    # end
  end
end


if testing_class_oven
  #  Go ahead
  require_relative "pizza"
  oven = Oven.new()
  pizza= Pizza.new(0)
  oven.add_pizza(pizza)
  puts oven.pizzas.inspect
  oven.remove_pizza(pizza)
  puts oven.pizzas.inspect

end
