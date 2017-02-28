require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/knight_rider'


class CharacterTest < Minitest::Test

  def test_character_has_a_name
    marc = Character.new("marc")
    assert_equal "marc", marc.name

  end
end
