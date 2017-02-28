require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require 'pry'

class CharacterTest < Minitest::Test

  def test_it_exists
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert character
  end

  def test_it_has_a_name
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "KITT", character.name
  end

  def test_it_has_actor
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "William Daniels", character.actor
  end

  def test_it_has_description
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "Pontiac Trans-Am", character.description
  end

  def test_it_has_birth_year
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal 1982, character.birth_year
  end

  def test_it_has_salary
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "0.00", character.salary
  end

  def test_it_has_headshot_url
    character = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "https://goo.gl/lSFYQo", character.headshot_url
  end

  def test_other_characters_can_have_a_different_name
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "Michael Knight", michael_knight.name
  end
end
