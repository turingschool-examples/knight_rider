require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/character'

class CharacterTest < Minitest::Test

  attr_reader :kitt,
              :michael_knight

  def setup
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
  end

  def test_does_it_exist
    assert_instance_of Character, kitt
    assert_instance_of Character, michael_knight
  end

  def test_it_can_return_name
    assert_equal "KITT", kitt.name
    assert_equal "Michael Knight", michael_knight.name
  end

  def test_it_can_return_actor
    assert_equal "David Hasselhoff", michael_knight.actor
    assert_equal "William Daniels", kitt.actor
  end

  def test_it_can_return_description
    assert_equal "Pontiac Trans-Am", kitt.description
    assert_equal "A special type of hero", michael_knight.description
  end

  def test_it_can_return_birth_year_as_integer
    assert_equal 1952, michael_knight.birth_year
    assert_instance_of Fixnum, michael_knight.birth_year
  end

  def test_it_can_return_salary_as_integer
    assert_equal 1000000000, michael_knight.salary
    assert_instance_of Fixnum, michael_knight.salary
  end

  def test_it_can_return_headshot_url_as_string
    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
    assert_instance_of String, kitt.headshot_url
  end
end
