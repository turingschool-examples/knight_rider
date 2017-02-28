class Character

  attr_reader :name, :actor, :description, :birth_year, :salary, :headshot_url

  def initialize(character_name, actor_name, description, birth_year, salary_string, headshot_url)
    @name = character_name
    @actor = actor_name
    @description = description
    @birth_year = birth_year
    @salary = parse_salary(salary_string)
    @headshot_url = headshot_url
  end

  def parse_salary(salary)
    salary = salary.to_s
    salary.gsub!(/[^\d^\.]/, '')
    salary.to_i
  end


end