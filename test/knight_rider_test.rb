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

  def test_it_can_return_array_of_character_objects
    assert_instance_of Array, knight_rider.characters
    assert_instance_of Character, knight_rider.characters.first
    assert_equal "KITT", knight_rider.characters.first.name
    assert_equal 2, knight_rider.characters.count
  end

  def test_it_can_return_creator_name
    assert_equal "Glen Larson", knight_rider.creator
  end

  def test_it_can_return_network
    assert_equal "NBC", knight_rider.network
  end
end
