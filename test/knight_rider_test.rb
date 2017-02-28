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
		# assert_equal 2, knight_rider.characters.count

	end

	def test_knight_rider_returns_creator
		skip
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

	def test_knight_rider_returns_total_payroll
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
		knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
		
		knight_rider.add_characters(kitt)
		knight_rider.add_characters(michael_knight)
		knight_rider.add_characters(devon_miles)
		assert_equal 1001000000, knight_rider.total_payroll
	end

	def test_knight_rider_returns_highest_grossing_actor
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
		knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
		
		knight_rider.add_characters(kitt)
		knight_rider.add_characters(michael_knight)
		knight_rider.add_characters(devon_miles)
		assert_equal 3, knight_rider.characters.count
		assert_equal michael_knight, knight_rider.highest_grossing_actor
	end
end