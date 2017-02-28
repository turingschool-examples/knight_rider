require 'erb'
require './lib/character'

class KnightRider

  attr_reader :characters,
              :creator,
              :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def salaries
    characters.map do |character|
      character.salary
    end
  end

  def total_payroll
    salaries.reduce(:+)
  end

  def highest_grossing_actor
    characters.max_by { |character| character.salary}
  end

  def get_binding
    binding
  end

end