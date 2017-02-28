require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'


class CharacterTest < Minitest::Test
  def setup
        @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
        @mk = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
      end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_it_gets_name
    assert_equal "KITT", @kitt.name
    assert_equal "Michael Knight", @mk.name
  end

  def test_it_gets_actor_name
    assert_equal "William Daniels", @kitt.actor
    assert_equal "David Hasselhoff", @mk.actor
  end

  def test_it_gets_description
    assert_equal "Pontiac Trans-Am", @kitt.description
    assert_equal "A special type of hero", @mk.description
  end

  def test_it_gets_birth_year
    assert_equal 1982, @kitt.birth_year
    assert_equal 1952, @mk.birth_year
  end

  def test_it_gets_salary
    assert_equal 0, @kitt.salary.to_i
    assert_equal 1000000000, @mk.salary.gsub!(/([,.])/, '')[0..6].to_i
  end

  def test_it_gets_headshot_url
    assert_equal "https://goo.gl/lSFYQo", @kitt.headshot_url
      assert_equal "https://goo.gl/Qk0pwL", @mk.headshot_url
  end


end
