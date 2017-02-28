require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test
  def test_instance
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_instance_of Character, kitt
  end

  def test_passed_variables
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal "Pontiac Trans-Am", kitt.description
    assert_equal 1982, kitt.birth_year
    assert_equal 0, kitt.salary
    assert_equal "https://goo.gl/lSFYQo",kitt.headshot_url
  end
end
