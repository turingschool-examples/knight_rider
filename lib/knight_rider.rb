require './lib/character'

class KnightRider
  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = []
    @creator = creator
    @network = network
  end


  def total_payroll
    binding.pry
  end


end
