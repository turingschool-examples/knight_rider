require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character_html_generator'


class CharacterHtmlGeneratorTest < Minitest::Test
  attr_reader :knight_rider
  def setup
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end

  def test_read_and_bind_erb
    gen = CharacterHtmlGenerator.new(knight_rider.characters)

    gen.read_and_bind_erb

    assert_instance_of ERB, gen.erb_page
    assert_instance_of String, gen.html_page
  end

  def test_make_html_page
    gen = CharacterHtmlGenerator.new(knight_rider.characters)

    gen.make_html_page
    html = File.read 'knight_rider.html'

    assert_instance_of String, html
    assert html.include? '<td>KITT</td>'
    assert html.include? '<td>David Hasselhoff</td>'
    assert html.include? '<td>35</td>'
    assert html.include? 'img src=https://goo.gl/Qk0pwL'
  end

end
