require 'pry'
class KnightRider
  attr_reader :number_of_characters, :creator, :network

  def initialize(*args, creator, network)
    @number_of_characters = []
    @creator = creator
    @network = network
  end

  def characters(character)
    @number_of_characters << character
  end

end
