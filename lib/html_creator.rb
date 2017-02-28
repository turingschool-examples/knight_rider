class HTML
	attr_reader :header, :movie, :handle, :char_once

	def initialize(header, movie, file_name = "./data/knight_rider_cast.html")
		@header        = header
		@movie         = movie
		@handle        = file_name
		@char_num      = 0
		@char_once     = []
		characters_attributes
	end

	def write
		File.open(handle, 'w') { |file| file.write(html_text) }
	end

	def characters_attributes
		movie.characters.each do |char|
			@char_num += 1
			@char_once << {"<h2>Character_#{@char_num}</h3>" => ["<ul>Name:        #{char.name}</ul>",
																										 "<ul>Actor:       #{char.actor}</ul>",
																										 "<ul>Description: #{char.description}</ul>",
																										 "<ul>Age:         #{char.age}</ul>",
																										 "<ul>Headshot:    #{char.headshot_url}</ul>",
																										 "\n"].join("\n")
										}
		end
	end

	def characters_remove_hash_array
		char_once.join("\n")
	end

	def zipped
		value, key = [], []
		char_once.map do |ugh| 
			value << ugh.values
			key << ugh.keys
		end
		key.zip(value).flatten.join("\n")
	end

	def html_text
		"<h1>#{header}</h1>\n\n#{zipped}"
	end
end
