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
  end
end

