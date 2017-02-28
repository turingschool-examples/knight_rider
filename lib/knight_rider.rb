require './lib/character'

class KnightRider
  attr_reader :creator,
              :network,
              :characters

  def initialize(character_array, creator, network)
    @creator = creator
    @network = network
    @characters =  character_array
  end

end
