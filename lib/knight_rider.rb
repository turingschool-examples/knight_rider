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

  def hashing_the_hoff
    @hash_elhoff = {} #there's gotta be bonus points for this!!!!
    @characters.each { |character| @hash_elhoff[character] = convert_salary(character) }
  end

  def highest_grossing_actor
    hashing_the_hoff
    @hash_elhoff.max_by { |k,v| v }[0]
  end

end






























#
