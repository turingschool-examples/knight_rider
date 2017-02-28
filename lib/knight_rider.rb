require_relative 'character'

class KnightRider

  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    salaries = @characters.map { |character| character.salary.delete ','}
    salaries.map { |num| num.to_i }.reduce(:+).to_s
  end

  def highest_grossing_actor
    @characters.max_by { |character| character.salary }
  end

end
