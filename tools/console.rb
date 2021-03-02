# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym_1 = Gym.new("Venegas Fitness")
gym_2 = Gym.new("Carter Pilates")
gym_3 = Gym.new("Raul Crossfit")
gym_4 = Gym.new("Angelo Theory Fitness")

lifter_a = Lifter.new("Ronald McDonald", 135)
lifter_b = Lifter.new("Burger King", 166)
lifter_c = Lifter.new("Colnel Sanders", 190)

membership_silver = Membership.new(80, gym_1, lifter_a)
membership_gold = Membership.new(110, gym_2, lifter_b)
membership_platinum = Membership.new(150, gym_3, lifter_c)


binding.pry

puts "Gains!"
