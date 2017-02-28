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

    it "should know its own information" do
      knight_rider.characters.count.must_equal(2)
      knight_rider.characters.sample.must_be_instance_of(Character)

      knight_rider.creator.must_equal("Glen Larson")
      knight_rider.network.must_equal("NBC")
    end
  end

  describe "when asked about money" do

    attr_reader :knight_rider

    before do
      kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
      michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
      devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
      @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
    end

    it "should know its total payroll" do
      knight_rider.total_payroll.must_equal(1001000000)
    end

    it "should know its best paid actor" do
      knight_rider.highest_grossing_actor.actor.must_equal('David Hasselhoff')
    end
  end
end
