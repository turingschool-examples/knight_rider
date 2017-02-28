gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_exists
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_instance_of Character, kitt
  end

  def test_character_has_a_name
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "KITT", kitt.name
  end

  def test_character_has_an_actor
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "William Daniels", kitt.actor
  end

  def test_character_has_a_description
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "Pontiac Trans-Am", kitt.description
  end

  def test_character_has_a_birth_year
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal 1982, kitt.birth_year
  end

  def test_character_has_a_salary
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "0.00", kitt.salary
  end

  def test_character_has_a_headshot_url
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
  end

end
