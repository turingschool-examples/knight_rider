class KnightRider

  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    characters.reduce(0) do |payroll, character|
      payroll += character.salary
    end
  end
end