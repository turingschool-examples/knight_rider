class HTML
	attr_reader :header, :movie, :handle

	def initialize(header, movie, file_name = "./data/knight_rider_cast.html")
		@header        = header
		@movie         = movie
		@handle        = file_name
		@char_num = 1
	end

	def write
		handle.write "# #{header}\n\n## Characters\nCharacter #{@char_num}"
	end

	def characters_attributes
		all_chars = []
		charactes.group_by do |char|
			all_chars << {
				"Character#{@char_num}" => [char.name, char.actor, char.description, char.age, char.headshot_url] }
		end
	end
end
