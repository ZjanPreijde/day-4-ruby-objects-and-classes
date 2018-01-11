testing_class_oven = false
# Uncomment next line to start testing
testing_class_oven = true

class Oven
  attr_accessor :pizzas
  MAX_PIZZAS = 3

  def initialize(pizzas = [])
    @pizzas = pizzas
  end

  def room_in_oven?
    # Room left in oven
    @pizzas.length < MAX_PIZZAS
  end

  def add_pizza(pizza)
    # Add pizza object to array
    return if @pizzas.length >= MAX_PIZZAS
    @pizzas << pizza
  end

  def add_baking_time
    # Add baking time to pizzas
    @pizzas.each do |pizza|
      pizza.add_to_cooktime
    end
  end

  def remove_done_pizzas
    # Check for done pizzas
    done_pizzas = 0
    @pizzas.each do |pizza|
      if pizza.pizza_done?
        done_pizzas += 1
        remove_pizza(pizza)
      end
    end
    return done_pizzas
  end

  def remove_pizza(pizza_to_remove)
    # remove pizza object from array
    @pizzas.reject do |pizza|
      pizza == pizza_to_remove
    end
  end
end


if testing_class_oven
  #  Go ahead

end
