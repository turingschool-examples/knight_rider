class KnightRider
	attr_reader :characters, :creator, :network

	def initialize(characters, creator, network)
		@characters = characters
		@creator    = creator
		@network    = network
	end

	def total_payroll
		characters.reduce(0) { |amount, char| amount += char.salary }
	end

	def highest_grossing_actor
		highest = characters[0]
		characters.each { |char| highest = char if char.salary > highest.salary }
		highest
	end
end