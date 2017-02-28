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

# knight_rider.characters
#=> [<Character:...>, <Character:...>]
# knight_rider.creator
#=> "Glen Larson"
# knight_rider.network
#=> "NBC"


end