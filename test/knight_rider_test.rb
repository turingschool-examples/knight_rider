require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/knight_rider'

class KnightRiderTest < Minitest::Test

	def test_knight_rider_object_exists
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

		knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
		assert_equal KnightRider, knight_rider.class
	end

	def test_knight_rider_returns_characters
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

		knight_rider.add_characters(kitt)
		knight_rider.add_characters(michael_knight)

		assert_equal [kitt, michael_knight], knight_rider.characters
	end

	def test_knight_rider_returns_creator
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

		assert_equal "Glen Larson", knight_rider.creator
	end

	def test_knight_rider_returns_network
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
		assert_equal "NBC", knight_rider.network 
	end
end