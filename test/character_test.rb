require './test/test_helper'

class CharacterTest < Minitest::Test
  def setup
    @character = Character.new("name", "actor", "description", 1952, 1000000000.0, "http://www.google.com")
  end

  def test_it_exists
    assert @character
  end

  def test_it_names
    assert_equal "name", @character.name
    refute_equal "", @character.name
  end

  def test_it_actors
    assert_equal "actor", @character.actor
    refute_equal "", @character.actor
  end

  def test_it_describes
    assert_equal "description", @character.description
    refute_equal "", @character.description
  end

  def test_it_is_born
    assert_equal 1952, @character.birth_year
    refute_equal 0, @character.birth_year
  end

  def test_it_can_make_that_money
    assert_equal 1000000000.0, @character.salary
    refute_equal 3, @character.salary
  end

  def test_for_glamourous_photography
    assert_equal "http://www.google.com", @character.headshot_url
    refute_equal "", @character.headshot_url
  end
end