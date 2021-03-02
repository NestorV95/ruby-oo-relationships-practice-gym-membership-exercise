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

  def specific_memberships(gym) #Get a list of all memberships at a specific gym

  end

  def members_belong_to( gym) #Get a list of all the lifters that have a membership to a specific gym

  end

  def lifter_name #Get a list of the names of all lifters that have a membership to that gym

  end

  def total_num_memberships #Get the combined lift total of every lifter has a membership to that gym

  end
end
