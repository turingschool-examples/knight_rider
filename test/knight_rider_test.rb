require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test
  def test_it_exist
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_instance_of Character, kitt
  end

  def test_there_is_a_name
    skip
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "KITT", kitt.name
  end

  def test_there_actor
    skip
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "William Daniels", kitt.actor
  end

  def test_there_is_description
    skip
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "Pontiac Trans-Am", kitt.description
  end

  def test_there_is_birth_year
    skip
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal 1982, kitt.birth_year
  end

  def test_there_is_a_salary
    skip
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal 0, kitt.salary
  end

  def test_there_is_headshot_url
    skip
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
  end

  def test_there_is_an_object
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal michael_knight, michael_knight
  end

  def test_new_name
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "Michael Knight", michael_knight.name
  end

  def test_actor_real_name
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "David Hasselhoff", michael_knight.actor
  end

  def test_new_description
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "A special type of hero", michael_knight.description
  end

  def test_birthday_year
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal 1952, michael_knight.birth_year
  end

  def test_new_salary
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal 1000000000, michael_knight.salary
  end

  def test_new_headshot_url
    skip
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end
end
