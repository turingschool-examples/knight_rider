class KnightRider
  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def character_array
    @character_array = []
  end

  def characters
    @characters << @name
  end
end
