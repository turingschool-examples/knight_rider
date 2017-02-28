require "./lib/character"
class KnightRider
  attr_reader :characters, :creator, :network
  
  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network    
  end
end

# knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
# knight_rider.characters
# #=> [<Character:...>, <Character:...>]
# knight_rider.creator
# #=> "Glen Larson"
# knight_rider.network
# #=> "NBC"