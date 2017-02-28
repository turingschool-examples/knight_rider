require './lib/knight_rider'
require './lib/character'
require 'erb'

class KnightRiderCastPage
  attr_reader :letter, :knight_rider

  def initialize(letter, knight_rider)
    @letter = File.read(letter)
    @knight_rider = knight_rider
    binding.pry
  end

  def create_erb_template
    ERB.new(letter)
  end

  def make_page
    create_erb_template.result
  end
end
