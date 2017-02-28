require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Test

  attr_reader :kitt, :michael_knight, :devon_miles, :kr

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @kr = KnightRider.new([kitt, michael_knight, devon_miles], "Glenn Larson", "NBC")
  end

  def test_it_exists
    assert_instance_of KnightRider, kr
  end

  def test_it_knows_characters
    assert_instance_of Array, kr.characters
    assert_equal 3, kr.characters.count
    assert_instance_of Character, kr.characters.first
    assert_equal kitt, kr.characters.first
    assert_equal "William Daniels", kr.characters.first.actor
  end

  def test_it_knows_creator
    assert_equal "Glenn Larson", kr.creator
  end

  def test_it_knows_network
    assert_equal "NBC", kr.network
  end

  def test_it_knows_total_payroll
    assert_equal 1001000000, kr.total_payroll
  end

  def test_it_knows_highest_grossing_actor
    assert_instance_of Character, kr.highest_grossing_actor
    assert_equal michael_knight, kr.highest_grossing_actor
    assert_equal "David Hasselhoff", kr.highest_grossing_actor.actor
  end
end
