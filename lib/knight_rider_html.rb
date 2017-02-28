require "./lib/knight_rider"
require "pry"

class KnightRiderHtml
  attr_reader :knight_rider
  def initialize
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end

  def write_html(path)
    file = File.new(path, "w")
    file.puts "<body>"
    print_cast(file)
    file.puts "</body>"
    file.close

  end

  def print_cast(file)
    file.puts "<h1>Knight Rider Cast</h1>"
    @knight_rider.characters.each do |char|
      file.puts "<h2>Character Name: #{char.name}</h2>"
      file.puts "<h3>Actor: #{char.actor}</h3>"
      file.puts "<h3>Description: #{char.description}</h3>"
      file.puts "<h3>Age: #{2017 - char.birth_year}</h3>"
      file.puts "<img height= '250' src= #{char.headshot_url}> </img>"
    end
  end


end

writer = KnightRiderHtml.new
writer.write_html("./data/html_output.html")
binding.pry

""