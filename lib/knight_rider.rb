require 'pry'
class KnightRider
	attr_reader :characters, :creator, :network
	def initialize(characters, creator, network)
		@characters = []
		@creator = creator
		@network = network
	end

	def add_characters(character)
		@characters << character
	end

	def highest_grossing_actor
		characters.max_by do |character|
			character.salary
		end
	end

	def payroll

	end

end