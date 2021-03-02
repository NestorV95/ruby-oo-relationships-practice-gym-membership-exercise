class Gym
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
     @@all
  end

  def specific_memberships #Get a list of all memberships at a specific gym
     Membership.all.select{|membership| membership.gym == self}
  end

  def members_belong_to #Get a list of all the lifters that have a membership to a specific gym
     self.specific_memberships.map{|membership| membership.lifter}
  end

  def lifter_name #Get a list of the names of all lifters that have a membership to that gym
     members_belong_to.map{|lifter| lifter.name}
  end

  def total_num_memberships #Get the combined lift total of every lifter has a membership to that gym
     members_belong_to.map{|lifter| lifter.total_lift}.sum
  end
end
