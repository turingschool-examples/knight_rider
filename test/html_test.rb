require 'minitest/autorun'
require 'minitest/emoji'
require './lib/html'
require './lib/knight_rider'
require './lib/character'

class HtmlTest < Minitest::Spec

  attr_reader :knight_rider, :html

  before do
      kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
      michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
      devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
    @html = HTML.new(knight_rider)
  end

  describe "when it starts" do
    it "should make an HTML object" do
      html.must_be_instance_of(HTML)
    end
  end

end
