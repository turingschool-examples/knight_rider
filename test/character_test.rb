require 'minitest/autorun'
require 'minitest/emoji'
require './lib/character'

class CharacterTest < Minitest::Spec

  attr_reader :kitt

  before do
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
  end

  describe "when it starts" do
    it "should be a character" do
      kitt.must_be_instance_of(Character)
    end

    it "should know its own information" do
      kitt.name.must_equal('KITT')
      kitt.actor.must_equal('William Daniels')
      kitt.description.must_equal('Pontiac Trans-Am')
      kitt.birth_year.must_equal(1982)
      kitt.salary.must_equal(0)
      kitt.headshot_url.must_equal("https://goo.gl/lSFYQo")
    end
  end

  describe "when it parses_attributes" do

    attr_reader :rich_guy, :poor_guy

    before do
      @rich_guy = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "1,000,000", "https://goo.gl/lSFYQo")
      @poor_guy = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "1.25", "https://goo.gl/lSFYQo")
    end

    it "should be flexible with salaries" do
      rich_guy.salary.must_equal(1000000)
      poor_guy.salary.must_equal(1)
    end
  end
end

