gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test

  def test_it_exists
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_instance_of KnightRider, knight_rider
  end

end
