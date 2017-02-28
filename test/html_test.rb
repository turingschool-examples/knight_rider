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

    it "should know how to make an html file from show info" do
      html.print_to_file('knight_rider')
      assert File.exist?('./output/knight_rider.html')
      File.read('./output/knight_rider.html').must_include('KITT')
    end

    it "should build an html string" do
      html.build_html.must_be_instance_of(String)
      html.build_html.must_include('<html>')
    end

    after do
      File.delete('./output/knight_rider.html') if File.exist?('./output/knight_rider.html')
    end
  end

  describe "when it builds html" do

    attr_reader :knight_rider, :html

    before do
      kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
      michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
      devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
      @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
      @html = HTML.new(knight_rider).build_html
    end

    it "should make a page header" do
      html.must_include('<h1>Knight Rider Cast</h1>')
    end

    it "should list characters from the show" do
      html.must_include("KITT")
    end

    it "should show a picture for the headshot url" do
    end
  end


end
