class Character

  attr_reader :name, :actor, :description, :birth_year, :salary, :headshot_url


  def initialize(name, actor, description, birth_year, salary, headshot_url)
    @name = name
    @actor = actor
    @description = description
    @birth_year = birth_year
    @salary = salary
    @headshot_url = headshot_url
  end

end
