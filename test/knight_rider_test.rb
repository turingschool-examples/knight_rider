require './test/test_helper'

class KnightRiderTest < Minitest::Test

  def setup
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end

  def test_it_exists
    assert_instance_of KnightRider, @knight_rider
  end

  def test_characters
    assert_instance_of Array, @knight_rider.characters
    assert_equal 3, @knight_rider.characters.count
  end

  def test_creator
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_network
    assert_equal "NBC", @knight_rider.network
  end

  def test_total_payroll
    skip
    assert_equal 1001000000, @knight_rider.total_payroll
  end


end
