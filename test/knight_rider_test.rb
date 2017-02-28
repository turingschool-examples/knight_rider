require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require 'pry'


class KnightRiderTest < Minitest::Test
  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @knight_rider = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
  end

  def test_it_exists
    assert_instance_of KnightRider, @knight_rider
    # binding.pry
  end

  def test_characters_returns_characters
    assert_equal [@kitt, @michael_knight], @knight_rider.characters
  end

  def test_creator_returns_creator
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_network_returns_network
    assert_equal "NBC", @knight_rider.network
  end  

  def test_it_can_take_different_arguments
    beth = Character.new("BETH", "herself", "Pontiac Trans-Am", 1988, "1,000,000,000.00", "https://goo.gl/lSFY32")
    bob_ross = Character.new("BOB", "himself", "A very special type of hero", 1952, "999,999,999", "https://happy_painter.com")
    new_knight_rider = KnightRider.new([beth, bob_ross], "Mr. Rogers", "BBC")

    assert_instance_of KnightRider, new_knight_rider
    assert_equal [beth, bob_ross], new_knight_rider.characters
    assert_equal "Mr. Rogers", new_knight_rider.creator
    assert_equal "BBC", new_knight_rider.network
  end

  def test_total_payroll_returns_payroll_sum
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
    
    assert_equal 1001000000, knight_rider.total_payroll
  end

  def test_different_payroll_returns_different_sum
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.05", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,999,324", "https://goo.gl/JsvAuV")
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")

    assert_equal 2000324.05, knight_rider.total_payroll
  end

  def test_highest_grossing_actor
    assert_equal @michael_knight, @knight_rider.highest_grossing_actor
  end

  def test_different_highest_grossing_actor
    beth = Character.new("BETH", "herself", "Pontiac Trans-Am", 1988, "1,000,000,000.00", "https://goo.gl/lSFY32")
    bob_ross = Character.new("BOB", "himself", "A very special type of hero", 1952, "999,999,999", "https://happy_painter.com")
    new_knight_rider = KnightRider.new([beth, bob_ross], "Mr. Rogers", "BBC")

    assert_equal beth, new_knight_rider.highest_grossing_actor
  end
end