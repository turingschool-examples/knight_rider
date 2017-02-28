require 'minitest/autorun'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_exists
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")
   
    assert_instance_of Character, kitt
  end  

  def test_it_returns_name
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "KITT", kitt.name
  end

  def test_it_returns_actor
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "William Daniels", kitt.actor
  end

   def test_it_returns_description
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "Pontiac Trans-Am", kitt.description
  end

  def test_it_returns_birth_year
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal 1982, kitt.birth_year
  end


  def test_it_returns_salary
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "0.00", kitt.salary
  end


  def test_it_returns_headshot_url
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")

    assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url
  end


  def test_it_has_different_name
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")

    assert_equal "Michael Knight", michael_knight.name
  end

  def test_it_has_different_actor
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")

    assert_equal "David Hasselhoff", michael_knight.actor
  end

  def test_it_has_different_description
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")

    assert_equal "A special type of hero", michael_knight.description
  end

  def test_it_has_different_birth_year
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")

    assert_equal 1952, michael_knight.birth_year
  end

  def test_it_has_different_salary
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")

    assert_equal "1,000,000,000.00", michael_knight.salary
  end

  def test_it_has_different_headshot_url
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")

    assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
  end
end