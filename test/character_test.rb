require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  attr_reader :kitt

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
  end

  def test_it_exists
    assert_instance_of Character, kitt
  end

  def test_it_knows_its_name
    assert_equal "KITT", kitt.name
  end

  def test_it_knows_its_actor
    assert_equal "William Daniels", kitt.actor
  end

  def test_it_knows_its_description
    assert_equal "Pontiac Trans-Am", kitt.description
  end

  def test_it_knows_its_birth_year
    assert_equal 1982, kitt.birth_year
  end

  def test_it_knows_its_salary
    assert_equal 0, kitt.salary
  end

  def test_it_knows_its_headshot_url
    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
  end

  def test_age
    assert_equal 35, kitt.age
  end

end