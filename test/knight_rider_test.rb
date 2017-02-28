require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Test
attr_reader :kitt, :michael_knight, :devon_miles, :knight_rider, :knight_rider_2

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    @knight_rider_2 = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end

  def test_it_exists
    assert_instance_of Character, kitt
    assert_instance_of Character, michael_knight
    assert_instance_of KnightRider, knight_rider
  end

  def test_it_returns_name
    assert_equal "KITT", kitt.name
    assert_equal "Michael Knight", michael_knight.name
  end

  def test_it_returns_actor
    assert_equal "William Daniels", kitt.actor
    assert_equal "David Hasselhoff", michael_knight.actor
  end

  def test_it_returns_description
    assert_equal "Pontiac Trans-Am", kitt.description
    assert_equal "A special type of hero", michael_knight.description
  end

  def test_it_returns_birth_year
    assert_equal 1982, kitt.birth_year
    assert_equal 1952, michael_knight.birth_year
  end

  def test_it_returns_a_salary
    assert_equal 0, kitt.salary
    assert_equal 1000000000, michael_knight.salary
  end

  def test_it_returns_headshot_url
    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end

  def test_it_returns_knight_rider_characters
    assert_instance_of Array, knight_rider.characters
    assert knight_rider.characters
    assert_equal 2, knight_rider.characters.count
  end

  def test_it_returns_creator
    assert_equal "Glen Larson", knight_rider.creator
  end

  def test_it_returns_network
    assert_equal "NBC", knight_rider.network
  end

  def test_it_calculates_total_payroll
    assert_equal 1001000000, knight_rider_2.total_payroll
  end

  def test_it_returns_highest_grossing_actor
    assert knight_rider_2.highest_grossing_actor
    assert_equal "David Hasselhoff", knight_rider_2.highest_grossing_actor.actor
    assert_equal 1000000000, knight_rider_2.highest_grossing_actor.salary
  end
end
