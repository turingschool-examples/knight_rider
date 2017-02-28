require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'


class CharacterTest < Minitest::Test
  attr_reader
  def setup
        @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
      end

  def test_it_exists
    # kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_instance_of Character, @kitt
  end

  def test_it_gets_name

  end

end
