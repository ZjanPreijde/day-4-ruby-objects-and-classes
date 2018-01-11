testing_class_pizza = false
# Uncomment next line to start testing
# testing_class_pizza = true

class Pizza
  attr_accessor :cook_time, :done_time
  ADD_COOK_TIME = 1
  # MAX_COOK_TIME = 12, randomized

  def initialize(cook_time = 0)
    @cook_time = cook_time
    @done_time = Random.new.rand(10..14)
  end

  def add_to_cooktime
    @cook_time += ADD_COOK_TIME
  end

  def pizza_done?
    @cook_time >= @done_time
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
