require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([@kitt, @michael_knight, @devon_miles], "Glen Larson", "NBC")
  end

  def test_has_characters
    assert_equal [@kitt, @michael_knight, @devon_miles], @knight_rider.characters
  end

  def test_has_creator
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_has_network
    assert_equal "NBC", @knight_rider.network
  end

  def test_total_payroll
    assert_equal 1001000000, @knight_rider.total_payroll
  end

  def test_highest_paid_actor
    assert_equal @michael_knight, @knight_rider.highest_grossing_actor
  end

end










#
