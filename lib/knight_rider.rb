require 'webrick'
require './lib/character'
require 'launchy'

class KnightRider
  attr_reader :creator,
              :network,
              :characters

  def initialize(character_array, creator, network)
    @creator = creator
    @network = network
    @characters =  character_array
  end

  def convert_salary(character)
    character.salary.gsub(/,/, '').to_f
  end

  def total_payroll
    characters.map { |character| convert_salary(character) }.reduce(:+)
  end

  def hashing_the_hoff
    @hash_elhoff = {} #there's gotta be bonus points for this!!!!
    @characters.each { |character| @hash_elhoff[character] = convert_salary(character) }
  end

  def highest_grossing_actor
    hashing_the_hoff
    @hash_elhoff.max_by { |k,v| v }[0]
  end

  def make_html
    #convert @characters objects into printable html format
  end

  def print_to_page
    make_html
    writer = File.open('./lib/text.html', "w")
    writer.write(@characters_html)
    Launchy.open("./lib/text.html")
  end
end

if __FILE__ == $0
  @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
  @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
  @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
  knight = KnightRider.new([@kitt, @michael_knight, @devon_miles], "Glen Larson", "NBC")
  knight.print_to_page
end
