require './lib/character'
require 'erb'

kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")


knight_rider_template = File.read "knight_rider.erb"
erb_template = ERB.new knight_rider_template

final_page = erb_template.result(binding)

Dir.mkdir("output") unless Dir.exists? "output"

filename = "knight_rider_cast.html"

File.open(filename,'w') do |file|
  file.puts final_page
end
