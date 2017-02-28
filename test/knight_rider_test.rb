require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/knight_rider'
require 'pry'

class KnightRiderTest < Minitest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels",
    "Pontiac Trans-Am", 1982,
    "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight",
    "David Hasselhoff", "A special type of hero",
    1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @knight_rider = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
  end

  def test_they_exist
    skip
    assert_instance_of Character, @kitt
    assert_instance_of Character, @michael_knight
    assert_instance_of KnightRider, @knight_rider
  end

  def test_it_returns_characters
    skip
    assert_instance_of Array, @knight_rider.characters
    assert_equal 2, @knight_rider.characters.count
    assert_instance_of Character, @knight_rider.characters.first
    assert_equal @kitt, @knight_rider.characters.first
    assert_equal @michael_knight, @knight_rider.characters.last
  end

  def test_it_returns_creator
    skip
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_it_returns_network
    skip
    assert_equal "NBC", @knight_rider.network
  end


end
