require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'


class KnightRiderTest < Minitest::Test

  def test_it_exists
    kr = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
    assert_instance_of KnightRider, kr
  end
  # assert_equal [], knight_rider.characters
  def test_it_gets_characters
    skip
    kr = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
    assert_instance_of " ", kr.characters
  end
end
