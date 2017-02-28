require './test/test_helper'
require './lib/page_generator'

class PageGeneratorTest < Minitest::Test

  def setup
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
    @pg = PageGenerator.new(knight_rider)
  end

  def test_it_exists
    assert_instance_of PageGenerator, @pg
  end

  def test_it_can_read_template
    skip
    assert_includes @pg.template, "</html>"
  end

  def test_can_populate_html_with_character_information
    assert_includes @pg.generate_page, "Michael Knight"
  end

  def test_save_html_output
    saved_char_count = @pg.save_html_output
    assert saved_char_count > 60
  end


end
