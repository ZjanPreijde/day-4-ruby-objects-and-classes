space_ship_class_testing = false
# uncomment next line to start testing
# space_ship_class_testing = true

class Spaceship
  attr_accessor :name, :color, :crew_members

  def initialize(name="Enterprise", color="White", crew_members=[])
    @name = name
    @color = color
    @crew_members = crew_members
  end

  def print_details
    puts "The name of the space ship is #{self.name} and the color is #{self.color}"
    @crew_members.each { |crew_member| crew_member.list_credentials }
  end

  def paint(new_color)
    @color = new_color
  end

  def add_crew_member(crew_member)
    @crew_members << crew_member
  end

end


if space_ship_class_testing
  # Code here
end
