require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/knight_rider'

class KnightRiderTest <Minitest::Test

  attr_reader :kitt, :michael_knight, :knight_rider

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
  end

  def test_knight_rider_exists
    assert_instance_of KnightRider, knight_rider
  end

  def test_knight_rider_has_characters
    assert_instance_of Array, knight_rider.characters
    assert_equal [kitt, michael_knight], knight_rider.characters
  end

  def test_knight_rider_has_creator
    assert_equal "Glen Larson", knight_rider.creator
  end

  def test_knight_rider_has_network
    assert_equal "NBC", knight_rider.network
  end
end
