require 'pry'
require './lib/characters'

class KnightRider
  attr_reader  :cast, :creator, :network
  def initialize (cast, creator, network)
    @cast = cast
    @creator = creator
    @network = network

  end

  def self.knight_rider
    KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
  end
end



# knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
# knight_rider.characters
# #=> [<Character:...>, <Character:...>]
# knight_rider.creator
# #=> "Glen Larson"
# knight_rider.network
# #=> "NBC"
