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
     Membership.all.select{|membership| membership.lifter == self}
  end

  def lifter_gyms  #Get a list of all the gyms that a specific lifter has memberships to
      lifter_memberships.map{|membership| membership.gym}
  end

  def self.lifter_average #Get the average lift total of all lifters
     total_lift = 0
     self.all.each{|lifter| total_lift += lifter.total_lift}
     total_lift / self.all.count
  end

  def total_cost #Get the total cost of a specific lifter's gym memberships
     memberships.map{|membership| membership.cost}.sum
  end

  def  find_new_gym(gym, cost) #Given a gym and a membership cost, sign a specific lifter up for a new gym
      Membership.new(cost, gym, self)
  end
end
