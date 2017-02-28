require 'minitest'
require 'minitest/autorun'
require './lib/knight_rider'


module TestSetup

    @knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

end
