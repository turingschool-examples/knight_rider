require 'time'

class Character
  attr_reader :name, :actor, :description, :birth_year, :salary, :headshot_url
  def initialize(name,actor,description,birth_year,salary,headshot_url)
    @name = name
    @actor = actor
    @description = description
    @birth_year = birth_year
    @salary = salary.gsub(/[,]/,'').to_f
    @headshot_url = headshot_url
  end

  def age
    Time.now.year - birth_year
  end

  def make_html_src_headshot
    "<img src=#{headshot_url}>"
  end
end
