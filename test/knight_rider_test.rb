require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test
  attr_reader :michael_knight, :kitt, :devon_miles
  def setup
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
  end

  def test_instance
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_instance_of KnightRider, knight_rider
  end

  def test_passed_variables
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_equal 2, knight_rider.characters.count
    assert_instance_of Character, knight_rider.characters.first
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal "NBC", knight_rider.network
  end

  def test_total_payroll
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")

    assert_equal 1001000000, knight_rider.total_payroll
  end

  def test_highest_grossing_actor
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")

    assert_equal "Michael Knight", knight_rider.highest_grossing_actor.name
  end

end
