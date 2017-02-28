require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/knight_rider'


class CharacterTest < Minitest::Test

  def test_character_has_a_name
    marc = Character.new("marc")
    assert_equal "marc", marc.name

  end
  def test_the_character_has_an_actor
    kitt = Character.new("KITT", "William Daniels")
    assert_equal "William Daniels", kitt.actor
  end
  def test_the_character_has_a_description
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am")
    assert_equal "William Daniels", kitt.description
  end
end
