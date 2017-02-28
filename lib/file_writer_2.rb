require './lib/knight_rider'
require './lib/character'
require 'erb'

class FilerWriter

  attr_reader :kitt,
              :michael_knight,
              :devon_miles,
              :knight_rider

  def initialize
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end

end

kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")

knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")


template = File.read "knight_rider_template.erb"
renderer = ERB.new(template)
output = renderer.result(knight_rider.get_binding)

filename = "knight_rider.html"
File.open(filename, 'w') do |file|
    file.puts output
end