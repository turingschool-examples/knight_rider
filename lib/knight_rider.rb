class KnightRider

  attr_reader :characters, :creator, :network, :total_payroll, :highest_grossing_actor

  def initialize(characters, creator, network )
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll

    payroll = 0

    characters.each do |character|
      payroll += character.salary.gsub(/\,/,"").to_i
    end
    payroll
  end

  def highest_grossing_actor
    characters.sort_by { |character| character.salary.gsub(/\,/,"").to_i }.reverse.first 
  end

end
