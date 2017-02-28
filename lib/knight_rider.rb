class KnightRider
  attr_reader :creator,
              :network,
              :characters

  def initialize(character_array, creator, network)
    @creator = creator
    @network = network
    @characters =  character_array
  end

  def convert_salary(character)
    character.salary.gsub(/,/, '').to_f
  end

  def total_payroll
    characters.map { |character| convert_salary(character) }.reduce(:+)
  end

  def highest_grossing_actor
    # characters.each { |character| ch}
  end


end
