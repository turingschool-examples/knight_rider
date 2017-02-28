require './test/test_helper'
require './lib/character'


class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_character_attributes
    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal "Pontiac Trans-Am", @kitt.description
    assert_equal 1982, @kitt.birth_year
    assert_equal 0, @kitt.salary
    assert_equal "https://goo.gl/lSFYQo", @kitt.headshot_url
  end

  def test_other_character_attributes
    assert_equal "Michael Knight", @michael_knight.name
    assert_equal "David Hasselhoff", @michael_knight.actor
    assert_equal "A special type of hero", @michael_knight.description
    assert_equal 1952, @michael_knight.birth_year
    assert_equal 1000000000.00, @michael_knight.salary
    assert_equal "https://goo.gl/Qk0pwL", @michael_knight.headshot_url
  end

end
