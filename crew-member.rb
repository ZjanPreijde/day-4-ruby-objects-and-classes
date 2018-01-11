crew_member_class_testing = false
# uncomment next line to start testing
# crew_member_class_testing = !crew_member_class_testing

class CrewMember
  # attr_accessor :name, :rank
  PROMOTED_RANK = "Captain"

  def initialize(name = "Mo", rank = "Cleaner")
    @name = name
    @rank = rank
  end

  def name
    @name
  end
  # def name=(name)
  #   @name = name
  # end

  def rank
    @rank
  end

  def rename(new_name)
    @name = new_name
  end

  def promote
    return if is_captain?
    puts "#{@name} is promoted to #{PROMOTED_RANK}"
    @rank = PROMOTED_RANK
  end

  def is_captain?
    @rank == PROMOTED_RANK
  end

  def list_credentials
    puts "Crew member #{name} is a #{rank}"
  end
end

if crew_member_class_testing
  puts "- " * 20
  mo = CrewMember.new()
  mo.list_credentials
  puts "- " * 20
  zjan = CrewMember.new("Zjan", "IT-specialist")
  zjan.list_credentials
  zjan.promote
  zjan.list_credentials
  zjan.rename("Rishi")
  zjan.list_credentials
  puts "- " * 20
end
