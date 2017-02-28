require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/knight_rider'
require 'pry'

class KnightRiderTest < Minitest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels",
    "Pontiac Trans-Am", 1982,
    "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight",
    "David Hasselhoff", "A special type of hero",
    1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([@kitt, @michael_knight, @devon_miles], "Glen Larson", "NBC")
  end

  def test_they_exist
    assert_instance_of Character, @kitt
    assert_instance_of Character, @michael_knight
    assert_instance_of Character, @devon_miles
    assert_instance_of KnightRider, @knight_rider
  end

  def test_it_returns_characters
    assert_instance_of Array, @knight_rider.characters
    assert_equal 3, @knight_rider.characters.count
    assert_instance_of Character, @knight_rider.characters.first
    assert_equal @kitt, @knight_rider.characters.first
    assert_equal @devon_miles, @knight_rider.characters.last
  end

  def test_it_returns_creator
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_it_returns_network
    assert_equal "NBC", @knight_rider.network
  end

  def test_it_returns_total_payroll
    skip
    assert_equal 1000000000, @michael_knight.salary
    assert_equal 1000000, @devon_miles.salary
    assert_equal 1001000000, @knight_rider.total_payroll
  end

  def test_it_returns_highest_grossing_actor
    skip
    assert_instance_of Character, @knight_rider.highest_grossing_actor
    assert_equal @michael_knight, @knight_rider.highest_grossing_actor
  end

end
