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
end