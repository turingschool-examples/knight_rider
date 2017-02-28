require './lib/character'

class KnightRider

  attr_accessor :characters, 
                :creator, 
                :network
  
  def initialize (characters, creator, network)
    @characters = characters
    @creator    = creator
    @network    = network
  end

  def total_payroll
    characters.reduce(0) { |sum, character| sum + character.salary}
  end

  def highest_grossing_actor
    characters.sort_by { |character| character.salary }.last
  end
end