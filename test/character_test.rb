require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'


class CharacterTest < Minitest::Test
  attr_reader :kitt, :michael_knight
  def setup
        @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
        @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
        @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")

      end

  def test_it_exists
    assert_instance_of Character, @kitt
    assert_instance_of Character, @michael_knight, @devon_miles
  end

  def test_it_gets_name
    assert_equal "KITT", @kitt.name
    assert_equal "Michael Knight", @michael_knight.name
    assert_equal "Devon Miles", @devon_miles.name
  end

  def test_it_gets_actor_name
    assert_equal "William Daniels", @kitt.actor
    assert_equal "David Hasselhoff", @michael_knight.actor
    assert_equal "Edward Mulhare", @devon_miles.actor
  end

  def test_it_gets_description
    assert_equal "Pontiac Trans-Am", @kitt.description
    assert_equal "A special type of hero", @michael_knight.description
    assert_equal "FLAG spokesman and mission coordinator", @devon_miles.description
  end

  def test_it_gets_birth_year
    assert_equal 1982, @kitt.birth_year
    assert_equal 1952, @michael_knight.birth_year
    assert_equal 1923, @devon_miles.birth_year
  end

  def test_it_gets_salary
    assert_equal 0, @kitt.salary.to_i
    assert_equal 1000000, @michael_knight.salary.gsub!(/([,.])/,  '')[0..6].to_i
    assert_equal 1000000, @devon_miles.salary.gsub!(/([,])/, '').to_i
  end

  def test_it_gets_headshot_url
    assert_equal "https://goo.gl/lSFYQo", @kitt.headshot_url
      assert_equal "https://goo.gl/Qk0pwL", @michael_knight.headshot_url
      assert_equal "https://goo.gl/JsvAuV", @devon_miles.headshot_url
  end
end
