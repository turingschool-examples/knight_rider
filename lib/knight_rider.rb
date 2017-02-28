require "./lib/character"
class KnightRider
  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network    
  end

  def total_payroll
    characters.map { |char| char.salary }.reduce(:+)
  end
end

