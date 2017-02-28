require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Test

  attr_reader :knight_rider,
              :kitt,
              :michael_knight

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @knight_rider = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
  end

  def test_it_exits
    assert_instance_of KnightRider, knight_rider
  end
end
