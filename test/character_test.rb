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

	def test_character_can_return_another_name
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		assert_equal "Michael Knight", michael_knight.name
	end

	def test_character_can_grab_actor
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal "William Daniels", kitt.actor		
	end

	def test_character_can_grab_another_actor
		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		assert_equal "David Hasselhoff", michael_knight.actor
	end

	def test_character_can_return_descriptions
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal "Pontiac Trans-Am", kitt.description 

		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		assert_equal "A special type of hero", michael_knight.description
	end

	def test_character_can_return_birth_year
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal 1982, kitt.birth_year 

		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		assert_equal 1952, michael_knight.birth_year
	end

	def test_character_can_return_salary
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal "0.00", kitt.salary

		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		assert_equal "1,000,000,000.00", michael_knight.salary
		#that's a lot of dough
	end

	def test_character_can_return_url
		kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
		assert_equal "https://goo.gl/lSFYQo", kitt.headshot_url

		michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
		assert_equal "https://goo.gl/Qk0pwL", michael_knight.headshot_url
	end
end