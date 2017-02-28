require 'pry'
class Character

  attr_reader :name,
              :actor,
              :description,
              :birth_year,
              :salary,
              :headshot_url

  def initialize(name, actor, description, birth_year, salary, headshot_url)
    @name = name
    @actor = actor
    @description = description
    @birth_year = birth_year
    @salary = salary.gsub(/[\s,]/ ,"").to_i
    @headshot_url = headshot_url
  end

  def age
    birth = Time.new(birth_year)
    age = Date.today.year - birth.year
  end

end