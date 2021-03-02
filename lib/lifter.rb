class Lifter
  attr_reader :name, :lift_total

  @@all = []  #Get a list of all lifters

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def lifter_memberships #Get a list of all the memberships that a specific lifter has
     # Lifter.all.select{|object| object.name == self} returns lifter matching name
     
  end

  def lifter_gyms  #Get a list of all the gyms that a specific lifter has memberships to

  end

  def lifter_average #Get the average lift total of all lifters

  end

  def total_cost #Get the total cost of a specific lifter's gym memberships

  end

  def  find_new_gym(gym, membership) #Given a gym and a membership cost, sign a specific lifter up for a new gym

  end
end
