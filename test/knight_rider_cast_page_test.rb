require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'
require './lib/knight_rider_cast_page'

class TestKnightRiderCastPage < Minitest::Test
  attr_reader :kr, :michael_knight, :kitt, :devon_miles, :actors, :krcp
  def setup
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @actors = [michael_knight, kitt, devon_miles]
    @kr = KnightRider.new(actors, "Glen Larson", "NBC")
    @krcp = KnightRiderCastPage.new("./output/knight_rider_page.erb", kr)
  end

  def test_that_knight_rider_cast_page_exists
    assert_equal KnightRiderCastPage, krcp.class
  end

  def test_that_it_has_knight_rider
    assert_equal KnightRider, krcp.knight_rider.class
  end

  def test_that_it_has_erb_file
    assert_equal ERB, krcp.create_erb_template.class
  end

  def test_that_it_has_erb_result
    assert_equal String, krcp.make_page.class
  end

  def test_that_new_file_is_created_and_written
    assert_equal File, krcp.write_page
  end
end
