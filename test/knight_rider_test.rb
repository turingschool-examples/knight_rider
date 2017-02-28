require './test/test_helper'


class KnightRiderTest < Minitest::Test
  def setup 
    @character_1 = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://media.giphy.com/media/CoZR5jasUDp3q/giphy.gif")
    @character_2 = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://media.giphy.com/media/JtUFK4Tf2K2uA/giphy.gif")
    @character_3 = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,001", "https://goo.gl/JsvAuV")
    @rider = KnightRider.new([@character_1, @character_2, @character_3], "glen", "NBC")
  end

  def test_it_exists
    assert @rider
  end

  def test_it_has_creator
    assert_equal "glen", @rider.creator
    refute_equal "eric", @rider.creator
  end

  def test_it_has_characters
    assert_equal 3, @rider.characters.length
    assert_equal Character, @rider.characters.first.class
  end

  def test_it_has_newtowrk
    assert_equal "NBC", @rider.network
    refute_equal "ABC", @rider.network
  end

  def test_it_payrolls
    assert_equal 1001000001.0, @rider.total_payroll
    assert_equal Float, @rider.total_payroll.class
    refute_equal 13, @rider.total_payroll
  end

  def test_it_finds_the_rich_guy
    assert_equal @character_1, @rider.highest_grossing_actor
    assert_instance_of Character, @rider.highest_grossing_actor
  end

  def test_there_exists_a_new_file
    assert File.file?('./html/knight_rider.html')
    refute File.file?('./html/anything.html')
  end
end