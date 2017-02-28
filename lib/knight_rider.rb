require 'pry'
class KnightRider

  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    characters.reduce(0) { |sum, character| sum + character.salary }
  end

  def highest_grossing_actor
    characters.max { |character| character.salary }
  end

end
