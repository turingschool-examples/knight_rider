require './lib/character'
require 'erb'

class KnightRider

  attr_reader :characters, :creator, :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    characters.inject(0) do |total, character|
      total + character.salary
    end
  end

  def highest_grossing_actor
    characters.max_by(&:salary)
  end

  def make_html_page
    erb_page = ERB.new File.read "knight_rider.erb"
    html_page = erb_page.result(binding)

    filename = "knight_rider.html"
    File.open(filename,'w') do |file|
      file.puts html_page
    end
  end

end
