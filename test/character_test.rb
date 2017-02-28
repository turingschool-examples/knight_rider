require 'minitest/autorun'
require './lib/character'


class CharacterTest < Minitest::Test
	def test_character_object_exists
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal Character, kitt.class
	end

	def test_character_can_return_a_name
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal "KITT", kitt.name
	end
end