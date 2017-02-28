require './lib/character'

class KnightRider
  attr_reader :character, :creator, :network

  def initialize(character, creator, network)
    @characters = []
    @creator = creator
    @network = network
  end

  def characters(character)
    @characters.push(character)
  end

  def total_payroll(characters)
    characters.each do |salary|
      salary.characters = total_payroll
    end
  end

  def highest_grossing_actor

  end
end
