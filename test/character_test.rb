require 'minitest'
require 'minitest/autorun'
require './lib/character'


class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end


end
