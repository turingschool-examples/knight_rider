require './test/test_helper'

class HTMLTest < Minitest::Test
  def setup
    @character_1 = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @character_2 = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @character_3 = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,001", "https://goo.gl/JsvAuV")
    @rider = KnightRider.new([@character_1, @character_2, @character_3], "glen", "NBC")
    @html = HTML.new(@rider.characters)
  end
  def test_it_exists
    assert @html
  end
  
  def test_there_exists_a_new_file
    assert File.file?('./html/knight_rider.html')
    refute File.file?('./html/anything.html')
  end
end