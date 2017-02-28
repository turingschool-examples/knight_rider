require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_exists
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_instance_of Character, kitt
  end

  def test_it_has_a_name
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "KITT", kitt.name
  end

  def test_it_has_an_actor
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "William Daniels", kitt.actor
  end

  def test_it_has_a_description
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "Pontiac Trans-Am", kitt.description
  end

  def test_it_has_a_birth_year
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal 1982, kitt.birth_year
  end

  def test_it_has_a_salary
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal 0, kitt.salary
  end

  def test_it_has_a_headshot_url
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
  end

  def test_another_character_can_be_created
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_instance_of Character, michael_knight
  end

  def test_new_character_has_a_name
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "Michael Knight", michael_knight.name
  end

  def test_new_character_has_an_actor
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "David Hasselhoff", michael_knight.actor
  end

  def test_new_character_has_a_description
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "A special type of hero", michael_knight.description
  end

  def test_new_character_has_a_birth_year
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal 1952, michael_knight.birth_year
  end

  def test_new_character_has_a_salary
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal 1000000000, michael_knight.salary
  end

  def test_new_character_has_a_headshot_url
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end

end
