class KnightRider
  attr_reader :characters, :creator, :network
  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
   payroll = characters.map do |character|
     character.salary.to_i 
    end.reduce(:+)
  end

  def highest_grossing_actor
    characters.sort do |character|
      character.salary
    end
  end
end