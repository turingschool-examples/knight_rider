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
		# c.salary.split(',').join.to_i
		# c_two = c.salary.split.map do |num|
		# 	num.to_i
		# end
		# c_two, reduce(:+)
	# end

end