require './lib/character'
class KnightRider
  attr_reader :characters, :creator, :network
  def initialize(chars, creator, network)
    @characters = chars
    @creator = creator
    @network = network
  end
  
  def total_payroll
    @characters.reduce(0) do |total, character|
      total + character.salary
    end
  end

  def highest_grossing_actor
    @characters.max_by do |character|
      character.salary
    end
  end
end