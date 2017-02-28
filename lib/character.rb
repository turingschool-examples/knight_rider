class Character
  attr_reader :name, :actor, :description, :birth_year, :salary, :headshot_url
  def initialize(name, actor, description, birth_year, salary = 0, headshot_url)
    @name = name
    @actor = actor
    @description = description
    @birth_year = birth_year
    @salary = salary
    @headshot_url = headshot_url
  end
end

# knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
# knight_rider.characters
# #=> [<Character:...>, <Character:...>]
# knight_rider.creator
# #=> "Glen Larson"
# knight_rider.network
# #=> "NBC"
# Iteration 2
#
# kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
# michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
# devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
# knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
#
# knight_rider.total_payroll
# #=> 1001000000
#
# knight_rider.highest_grossing_actor
# #=> <Character:@name="Michael Knight"...>
# Iteration 3
#
# Using Ruby code, create a simple HTML page that displays a header "Knight Rider Cast" and lists the three characters with their name, actor, description, age, and a photo of their headshot. You will need to write HTML that somehow interacts with the Ruby objects you've created. There are several viable tactics for doing this.
#
# Hint: you will need to research tactics and experiment with them to get this work.
