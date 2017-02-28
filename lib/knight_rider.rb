class KnightRider
  attr_reader :name,
              :actor,
              :description,
              :birth_year,
              :salary,
              :headshot_url,
              :character_array

  def initialize(name, actor, description, birth_year, salary, headshot_url)
    @name = name
    @actor = actor
    @description = description
    @birth_year = birth_year
    @salary = salary
    @headshot_url = headshot_url
    @character_array = []
  end

  def characters
    @characters << @name
  end

  def creator
    knight_rider.actor
  end

  def network
    
  end
end
