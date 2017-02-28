require 'minitest'
require 'minitest/autorun'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test

  def test_it_exists
    assert_instance_of KnightRider, KnightRider.new
  end


end
