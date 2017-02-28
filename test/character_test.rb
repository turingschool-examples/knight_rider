require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class TestCharacter < Minitest::Test
  attr_reader :char
  def setup
    @char = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
  end

  def test_that_knight_rider_exists
    assert_instance_of Character, char
  end

  def test_that_knight_knows_name
    assert_equal "KITT", char.name
  end

  def test_that_knight_knows_actor
    assert_equal "William Daniels", char.actor
  end

  def test_that_knight_knows_description
    assert_equal "Pontiac Trans-Am", char.description
  end

  def test_that_knight_knows_birth_year
    assert_equal 1982, char.birth_year
  end

  def test_that_knight_knows_salary
    assert_equal 0.00, char.salary
  end
  def test_that_knight_knows_headshot_url
  assert_equal "https://goo.gl/lSFYQo", char.headshot_url

  end
  
  def test_that_salary_is_float
    assert_equal Float, char.salary.class
  end




end
