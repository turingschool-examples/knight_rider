require './test/test_helper'


class KnightRiderTest < Minitest::Test
  def setup 
    @character_1 = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @character_2 = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @rider = KnightRider.new([@character_1, @character_2], "glen", "NBC")
  end

  def test_it_exists
    assert @rider
  end

  def test_it_has_creator
    assert_equal "glen", @rider.creator
    refute_equal "eric", @rider.creator
  end

  def test_it_has_characters
    assert_equal 2, @rider.characters.length
    assert_equal Character, @rider.characters.first.class
  end

  def test_it_has_newtowrk
    assert_equal "NBC", @rider.network
    refute_equal "ABC", @rider.network
  end
end