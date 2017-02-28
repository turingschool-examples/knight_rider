require './lib/character'
require './lib/knight_rider'
require 'erb'
require 'pry'

template_letter = File.read "./io_files/html_form.erb"
erb_template = ERB.new template_letter

@kitt = Character.new("KITT", "William Daniels",
"Pontiac Trans-Am", 1982,
"0.00", "https://goo.gl/lSFYQo")
@michael_knight = Character.new("Michael Knight",
"David Hasselhoff", "A special type of hero",
1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
@devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
@knight_rider = KnightRider.new([@kitt, @michael_knight, @devon_miles], "Glen Larson", "NBC")

characters = @knight_rider.characters

form_letter = erb_template.result(binding)

output_letter = File.open("./io_files/html_output_file.html", "w")
output_letter.puts(form_letter)
