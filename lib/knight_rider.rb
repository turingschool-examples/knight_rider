require './lib/character'
class KnightRider
  attr_reader :characters, :creator, :network
  def initialize(chars, creator, network)
    @characters = chars
    @creator = creator
    @network = network
  end
  
end