require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'



class KnightRiderTest < Minitest::Test
  attr_reader :kitt, :michael_knight, :kr
  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    @kr = KnightRider.new([@kitt, @michael_knight, @devon_miles], "Glen Larson", "NBC")
  end

  def test_it_exists
    assert_instance_of KnightRider, kr
  end

  def test_it_gets_characters
    assert_equal [], kr.characters
  end

  def test_it_gets_creator
    assert_equal "Glen Larson", kr.creator
  end

  def test_it_gets_network
    assert_equal "NBC", kr.network
  end

  def test_total_payroll
    assert_equal 1001000000,   kr.total_payroll

  end
end
