require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'



class CharacterTest < Minitest::Test
  
  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
  end
  def test_it_exists
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_instance_of Character, kitt
  end

  def test_name_returns_name
    assert_equal "KITT", @kitt.name
  end

  def test_actor_returns_actor
    assert_equal "William Daniels", @kitt.actor
  end
  
  def test_description_returns_description
    assert_equal "Pontiac Trans-Am", @kitt.description
  end
  
  def test_birth_year_returns_birth_year
    assert_equal 1982, @kitt.birth_year
  end
  
  def test_salary_returns_salary_as_float
    assert_equal 0, @kitt.salary
  end

  def test_salary_can_take_string_with_commas
    beth = Character.new("BETH", "herself", "Pontiac Trans-Am", 1982, "1,000,000,000.00", "https://goo.gl/lSFY32")
    assert_equal 1000000000.00, beth.salary
  end

  def test_headshot_url_returns_headshot_url
    assert_equal "https://goo.gl/lSFYQo", @kitt.headshot_url
  end

  def test_it_can_create_different_character
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_instance_of Character, michael_knight
  
    assert_equal "Michael Knight", michael_knight.name
    assert_equal "David Hasselhoff", michael_knight.actor
    assert_equal "A special type of hero", michael_knight.description
    assert_equal 1952, michael_knight.birth_year
    assert_equal 1000000000, michael_knight.salary
    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end

end