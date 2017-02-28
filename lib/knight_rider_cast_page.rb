require './lib/knight_rider'
require './lib/character'
require 'erb'

class KnightRiderCastPage
  attr_reader :letter, :knight_rider

  def initialize(letter, knight_rider)
    @letter = File.read(letter)
    @knight_rider = knight_rider
  end

  def create_erb_template
    ERB.new(letter)
  end

  def make_page
    actors = knight_rider.characters
    create_erb_template.result(binding)
  end

  def write_page
    new = File.open('knight_rider_cast_page', 'w') { |file| file.write(make_page) }
    binding.pry
  end
  
end
