require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'

class TestKnightRider < Minitest::Test
  attr_reader :kr, :michael_knight, :kitt, :devon_miles, :actors
  def setup
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @actors = [michael_knight, kitt, devon_miles]
    @kr = KnightRider.new(actors, "Glen Larson", "NBC")
  end

  def test_that_knight_rider_exists
    assert_instance_of KnightRider, kr
  end

  def test_that_knight_rider_has_characters
    assert_equal 3, kr.characters.count
    assert_equal Character, kr.characters.first.class
    assert_equal Array, kr.characters.class
  end

  def test_that_knight_rider_knows_creator
    assert_equal "Glen Larson", kr.creator
  end

  def test_that_knight_knows_network
    assert_equal "NBC", kr.network
  end

  def test_that_it_can_get_total_payroll
    assert_equal 1001000000.0, kr.total_payroll
  end

  def test_that_it_can_find_highest_grossing_actor
    assert_equal "Michael Knight", kr.highest_grossing_actor.name
  end
end
