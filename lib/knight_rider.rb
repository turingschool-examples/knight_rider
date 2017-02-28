require 'pry'

class Character
  attr_reader :name
    def initialize(name, actor, description)
      @name = name
      @actor = actor
      @description = description

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
