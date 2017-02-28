require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'


class CharacterTest < MiniTest::Test

  attr_reader :kitt, :michael_knight

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
  end

  def test_it_exists
    assert kitt
    assert michael_knight
  end

  def test_name
    assert_equal "KITT", kitt.name
    assert_equal "Michael Knight", michael_knight.name
  end

  def test_actor
    assert_equal "William Daniels", kitt.actor
    assert_equal "David Hasselhoff", michael_knight.actor
  end

  def test_description
    assert_equal "Pontiac Trans-Am", kitt.description
    assert_equal "A special type of hero", michael_knight.description
  end

  def test_birth_year
    assert_equal 1982, kitt.birth_year
    assert_equal 1952, michael_knight.birth_year
  end

  def test_salary
    assert_equal "0.00", kitt.salary
    assert_equal "1,000,000,000.00", michael_knight.salary
  end

  def test_headshot_url
    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end

end
