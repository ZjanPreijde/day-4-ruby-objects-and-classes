testing_class_cook = false
# Uncomment next line to start testing
# testing_class_cook = true

class Cook
  attr_accessor :name, :secrets, :dishes, :activity, :chef_cook
  DEFAULT_SECRET = 'If it does not taste well, you did not add enough butter'

  def initialize(
      name = "",
      secrets = [DEFAULT_SECRET],
      dishes = [],
      activity = "on_duty",
      chef_cook = false
      )
    @name = name
    @secrets = secrets
    @dishes = dishes
    @activity = activity
    @chef_cook = chef_cook
  end

  def day_off
    @activity = "day_off"
  end

  def on_duty?
    @activity == "on_duty"
  end

  def is_chef?
    @chef_cook
  end

  def print_details
    print_name
    print_secrets
  end

  def print_name
    print "The cook's name is #{@name}."
    print " This is our chef!" if is_chef?
    print "\n"
  end

  def print_secrets
    print "\tThis cook"
    if @secrets.length == 0
      print " has no secrets"
    else
      print "'s secret '"
      if @secrets.length == 1
        print " is "
      else
        print " are "
      end
      print printable_secrets()
    end
    print "\n"
  end

  def print_dishes
    if @dishes
      print "\tThe cook's dishes are "
      print printable_dishes()
      print "\n"
    end
  end

  def add_secret(new_secret)
    @secrets << new_secret
    remove_default_secret()
    # clean_secrets()
  end

  def remove_default_secret
    return if @secrets.count == 1
    @secrets.reject do |secret|
      secret == DEFAULT_SECRET
    end
  end

  def clean_secrets
    # use .reject() method and iterate
    if @secrets.length > 1
      # delete element with default value
      @secrets.delete(DEFAULT_SECRET)
    end
  end

  def make(dish)
    case
    when !dish
    when !on_duty?
      puts " Very funny message, hahahaha, but seriously, DAY OFF!"
    else
      @dishes << dish
      puts "Here you go, a tasty #{dish}"
    end
    day_off if @dishes.count == 10
  end

  def printable_secrets
    @secrets.join(', ')
  end

  def printable_dishes
    @dishes.join(', ')
  end
end


if testing_class_cook
  #  Go ahead
endif
