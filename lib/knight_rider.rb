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

	def total_payroll
		characters.reduce(0) do |total, character|
			total + character.salary.split(',').join.to_f
		end
	end

	def highest_grossing_actor
		characters.max_by do |character|
			character.salary
		end
	end
end

