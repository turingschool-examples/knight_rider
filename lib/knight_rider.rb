class KnightRider

  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    salary = characters.map {|item| item.salary}

    total_payroll = salary.reduce(:+)
  end

  def highest_grossing_actor
    characters.max_by {|item| item.salary}
  end
end
