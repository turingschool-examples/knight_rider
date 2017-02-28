require 'pry'

class Character
  attr_reader :name, :actor, :description, :birth_year,
  :salary, :headshot_url, :age
  def initialize(name, actor, description, birth_year, salary, headshot_url)
    @name = name
    @actor = actor
    @description = description
    @birth_year = birth_year
    @salary = salary.delete(",").to_i
    @headshot_url = headshot_url
    @age = DateTime.now.year.to_i - birth_year
  end

end
