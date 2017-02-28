require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require 'pry'

class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels",
    "Pontiac Trans-Am", 1982,
    "0.00", "https://goo.gl/lSFYQo")
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_it_can_return_name
    assert_equal "KITT", @kitt.name
  end

  def test_it_can_return_actor
    assert_equal "William Daniels", @kitt.actor
  end

  def test_it_can_return_description
    assert_equal "Pontiac Trans-Am", @kitt.description
  end

  def test_it_can_return_birth_year
    assert_equal 1982, @kitt.birth_year
  end

  def test_it_can_return_salary
    assert_equal 0, @kitt.salary
  end

  def test_it_can_return_headshot_url
    assert_equal "https://goo.gl/lSFYQo", @kitt.headshot_url
  end


end
