require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'

class TestKnightRider < Minitest::Test
  attr_reader :knight_rider
  def setup
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
  end

  def test_instance
    assert_instance_of KnightRider, knight_rider
  end

  def test_passed_variables
    assert_equal 2, knight_rider.characters.count
    assert_instance_of Character, knight_rider.characters.first
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal "NBC", knight_rider.network
  end
end
