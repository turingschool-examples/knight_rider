require 'minitest/autorun'
require 'minitest/emoji'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Spec

  attr_reader :knight_rider

  before do
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
  end

  describe "when it starts" do
    it "should be a KnightRider" do
      knight_rider.must_be_instance_of(KnightRider)
    end
  end
end
