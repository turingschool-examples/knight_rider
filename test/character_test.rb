gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharaterTest < Minitest::Test

  def test_the_character_exists
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_instance_of Character, kitt

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_instance_of Character, michael_knight
  end

  def test_the_character_has_a_name
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "KITT", kitt.name

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_equal "Michael Knight", michael_knight.name
  end

  def test_the_character_is_an_actor
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "William Daniels", kitt.actor

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_equal "David Hasselhoff", michael_knight.actor
  end

  def test_the_character_has_a_car
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "Pontiac Trans-Am", kitt.description

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_equal "A special type of hero", michael_knight.description
  end

  def test_the_character_has_a_year_of_birth
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal 1982, kitt.birth_year

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_equal 1952, michael_knight.birth_year
  end

  def test_the_character_has_a_salary
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal 0, kitt.salary

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_equal 1000000000, michael_knight.salary
  end

  def test_the_character_has_a_url_for_headshot
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url

    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end
end
