require 'pry'

class KnightRider
  attr_reader :creator, :network
  attr_accessor :characters

  def initialize(characters=[], creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    payroll = characters.collect do |character|
      character.salary
    end
    payroll.reduce(:+)
  end

  def highest_grossing_actor
    characters.max_by do |character|
      character.salary
    end
  end

end
