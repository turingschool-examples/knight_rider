require './lib/knight_rider'
require './lib/character'
require 'erb'

class FileWriter

  attr_reader :kitt,
              :michael_knight,
              :devon_miles,
              :knight_rider,
              :file_name

  def initialize
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
    @file_name = "knight_rider.html"
  end

  def template
    File.read "knight_rider_template.erb"
  end

  def renderer
    ERB.new(template)
  end

  def output
    renderer.result(knight_rider.get_binding)
  end

  def open_file
    File.open(file_name, 'w') do |file|
        file.puts output
    end
  end
end

program = FileWriter.new
program.open_file