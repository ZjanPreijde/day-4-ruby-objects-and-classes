testing_class_pizza = false
# Uncomment next line to start testing
# testing_class_pizza = true

class Pizza
  attr_accessor :cook_time
  MAX_COOK_TIME = 12
  ADD_COOK_TIME = 1

  def initialize(cook_time = 0)
    @cook_time = cook_time
  end

  def add_to_cooktime
    @cook_time += ADD_COOK_TIME
  end
  
  def pizza_done?
    @cook_time >= MAX_COOK_TIME
  end
end


if testing_class_pizza
  #  Go ahead
  puts "- " * 20
  pizza = Pizza.new()
  until pizza.pizza_done?
    puts "#{pizza.cook_time}, done #{pizza.pizza_done?}"
    pizza.add_to_cooktime
  end
  puts "#{pizza.cook_time}, done #{pizza.pizza_done?}"
  puts "- " * 20
end
