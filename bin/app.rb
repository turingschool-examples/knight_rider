require 'sinatra'
require './lib/character'
require './lib/knight_rider'



set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"


get '/' do
    return "<h1> Knight Rider Cast </h1>
            <h2> Actor List </h2>"
end

get '/cast/' do
  return "<h2> (#{knight.output}) </h2>"
end

class KnightRiderWeb
  attr_reader :kitt, :michael_knight, :devon_miles, :knight_rider

  def initialize
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")

    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")

    @knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  end

  def output
    @knight_rider.characters.each do |character|
  puts "#{character.name}, #{character.actor}, #{character.description}, #{character.birth_year}, #{character.headshot_url}"
    end
  end
end

knight = KnightRiderWeb.new
knight.output
