require'minitest/autorun'
require'minitest/pride'
require'./lib/html_creator'
require'./lib/knight_rider'
require'./lib/character'

class HTMLTest < Minitest::Test
		attr_reader :kitt, :michael_knight, :knight_rider, :devon_miles, :knight_rider_v2, :html

	def setup
		@kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		@michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		@knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
		@devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
		@knight_rider_v2 = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
		@html = HTML.new("Knight Rider Cast", knight_rider_v2)
	end

	def test_can_return_attributes
		assert_equal "Knight Rider Cast", html.header
		assert_equal knight_rider_v2, html.movie
	end

	def test_can_write_to_file
		html.write
	end
end