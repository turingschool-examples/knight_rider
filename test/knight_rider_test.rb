require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'



class KnightRiderTest < Minitest::Test
  attr_reader :kitt, :mk, :kr
  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @mk = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @kr = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
  end

  def test_it_exists
    assert_instance_of KnightRider, kr
  end

  def test_it_gets_characters
    assert_instance_of " ", kr.characters
  end

  def test_it_gets_creator
    assert_instance_of "Glen Larson", kr.creator
  end

end
