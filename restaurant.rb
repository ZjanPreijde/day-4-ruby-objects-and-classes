testing_class_restaurant = false
# Uncomment next line to start testing
# testing_class_restaurant = true

class Restaurant
  attr_accessor :name, :kitchen_size, :cooks

  def initialize(name = "", kitchen_size = 0, cooks = [])
    @name = name
    @kitchen_size = kitchen_size
    @cooks = cooks
  end

  def add_cook(cook)
    if @cooks.length >= @kitchen_size
      # No more space
      puts "Trying to add cook to kitchen, but kitchen is full"
    else
      @cooks << cook
    end
  end

  def print_cooks
    cooks.each do |cook|
      print "We have cook #{cook.name}"
      print ", this is our chef!" if cook.is_chef?
      print "\n"
    end
  end

end


if testing_class_restaurant
  # Go ahead
end
