require 'pry'

class Character
  attr_reader :name, :actor, :description, :birth_year, :salary, :headshot_url
    def initialize(name, actor, decription = "", birth_year, salary, headshot_url)
      @name = name
      @actor = actor
      @description = description
      @birth_year = birth_year
      @salary = salary
      @headshot_url = headshot_url

    end

    def michael_knight
      Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    end

    def kitt
      Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    end

end


# kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
# #=> <Character:...>
# kitt.name
# #=> "KITT"
# kitt.actor
# #=> "William Daniels"
# kitt.description
# #=> "Pontiac Trans-Am"
# kitt.birth_year
# #=> 1982
# kitt.salary
# #=> 0
# kitt.headshot_url
# #=> "https://goo.gl/lSFYQo"
