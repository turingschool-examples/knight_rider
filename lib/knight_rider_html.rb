require "./lib/knight_rider"
require "pry"

class KnightRiderHtml
  attr_reader :knight_rider
  def initialize
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
  end

  def write_html
    file = File.new("./data/html_output.html", "w")
  end

end

# writer = KnightRiderHtml.new
# binding.pry

""