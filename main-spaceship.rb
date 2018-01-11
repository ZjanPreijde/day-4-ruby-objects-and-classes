require_relative "spaceship"
require_relative "crew-member"

spaceship1 = Spaceship.new("Enterprise")
spaceship2 = Spaceship.new("Titanic")
crew1 = CrewMember.new("Zjan", "IT-specialist")
crew2 = CrewMember.new("Rishi", "Captain")
crew3 = CrewMember.new("no one left", "all gone")

spaceship1.print_details
puts "- " * 20
spaceship1.paint("Purple")
spaceship1.print_details
puts "- " * 20
spaceship1.add_crew_member(crew1)
spaceship1.print_details
puts "- " * 20
spaceship1.paint("Red, White and Blue")
spaceship1.add_crew_member(crew2)
spaceship1.print_details
puts "- " * 20
spaceship1.add_crew_member(crew3)
spaceship1.print_details
puts "- " * 20
