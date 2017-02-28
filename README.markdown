# BE M1 Final Timed Assessment

Writing your own tests to drive development, write source code to deliver the following functionality.

You will need to fork and clone this repo before writing your code. To submit your work, create a pull request to the repo you forked from with branch name `firstname_lastname_knight_rider`. Good luck!

## Iteration 1

```ruby

kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
#=> <Character:...>
kitt.name
#=> "KITT"
kitt.actor
#=> "William Daniels"
kitt.description
#=> "Pontiac Trans-Am"
kitt.birth_year
#=> 1982
kitt.salary
#=> 0
kitt.headshot_url
#=> "https://goo.gl/lSFYQo"

michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
#=> <Character:...>
michael_knight.name
#=> "Michael Knight"
michael_knight.actor
#=> "David Hasselhoff"
michael_knight.description
#=> "A special type of hero"
michael_knight.birth_year
#=> 1952
michael_knight.salary
#=> 1000000000
michael_knight.headshot_url
#=> "https://goo.gl/Qk0pwL"

knight_rider = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
knight_rider.characters
#=> [<Character:...>, <Character:...>]
knight_rider.creator
#=> "Glen Larson"
knight_rider.network
#=> "NBC"

```


## Iteration 2

```ruby

michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")

knight_rider.total_payroll
#=> 1001000000

knight_rider.highest_grossing_actor
#=> <Character:@name="Michael Knight"...>

```


## Iteration 3

Using Ruby code, create a simple HTML page that displays a header "Knight Rider Cast" and lists the three characters with their name, actor, description, age, and a photo of their headshot. You will need to write HTML that somehow interacts with the Ruby objects you've created. There are several viable tactics for doing this.

Hint: you will need to research tactics and experiment with them to get this work.
