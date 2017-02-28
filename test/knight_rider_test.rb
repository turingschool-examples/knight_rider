require_relative 'test_helper'
require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/knight_rider'
require './lib/characters'


class CharacterTest < Minitest::Test
  def setup
    @knight_rider = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
  end

  def test_it_has_a_cast
    assert_equal @kitt, @knight_rider.cast

    # returns [nil, nil]
    # still having trouble calling methods through class attributes

  end
end
