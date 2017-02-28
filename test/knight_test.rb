require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight'

class KnightTest < Minitest::Test

  def test_new_object
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    assert_instance_of KnightRider, knight_rider
  end

  def test_there_is_an_array
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    assert_equal [], knight_rider.character_array
  end

  def test_there_are_objects_in_array
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    assert_equal [<Character:...>], <Character:...>], knight_rider.characters
  end

  def test_creator
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    assert_equal "Glenn Larson", knight_rider.creator
  end

  def test_network
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    assert_equal "NBC", knight_rider.network
  end
end
