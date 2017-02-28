require 'pry'

class KnightRider
  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    characters.map do |character|
      character.salary
    end.reduce(:+)
  end

  def highest_grossing_actor
    characters.sort_by do |character|
      character.salary
    end.last
  end

end
