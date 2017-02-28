require 'minitest'
require 'minitest/autorun'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test

  def setup
  end

  def test_it_exists
    assert_instance_of KnightRider, kitt
  end


end
