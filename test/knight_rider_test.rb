require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Test
  attr_reader :knight_rider, :kitt, :michael_knight, :devon_miles
  
  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end
  
  def test_it_exists
    kr = KnightRider.new
    assert_instance_of KnightRider, kr
  end
  
  def test_it_returns_an_array_of_characters
    assert_instance_of Array, knight_rider.characters
    assert_instance_of Character, knight_rider.characters.first
    assert_equal "KITT", knight_rider.characters.first.name
    assert_equal 3, knight_rider.characters.count
  end
  
  def test_it_can_calculate_total_payroll
    assert_instance_of Fixnum, knight_rider.total_payroll
    assert_equal 1001000000, knight_rider.total_payroll
  end
  
  def test_it_can_calculate_highest_grossing_actor
    assert_instance_of Character, knight_rider.highest_grossing_actor
    assert_equal "Michael Knight", knight_rider.highest_grossing_actor.name
  end
  
  def test_it_can_make_html_page
    knight_rider.make_website
    assert File.read "./sites/knight_rider_cast_kmd.html"
  end
end  
