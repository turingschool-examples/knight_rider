class KnightRider

  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    salary = characters.map do |item|
      item.salary
    end
    total_payroll = salary.reduce(:+)
  end
end
