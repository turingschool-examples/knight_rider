gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test

  def test_the_characters_in_Knight_Rider
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    knight_rider.characters

    assert_equal ([<Character:...>, <Character:...>]), knight_rider.characters
  end

  def test_who_created_Knight_Rider
    skip
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_equal "Glen Larson", knight_rider.creator
  end

  def test_which_network_owns_knight_Rider
    skip
    knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_equal "NBC", knight_rider.network
  end


end
