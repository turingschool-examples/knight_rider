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

  def highest_grossing_actor
    characters.reduce do |best_paid_actor, actor|
      best_paid_actor = actor if actor.salary > best_paid_actor.salary
      best_paid_actor
    end
  end
end