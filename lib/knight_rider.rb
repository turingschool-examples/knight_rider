require './lib/character'

class KnightRider
  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end


  def total_payroll
    characters.inject(0) {|sum, char| sum + char.salary}
  end

  def highest_grossing_actor
    characters.max_by(&:salary)
  end

end
