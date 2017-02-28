require 'erb'

class KnightRider
  attr_reader :characters, :creator, :network

  def initialize(characters = [], creator = "", network = "")
    @characters = characters
    @creator = creator
    @network = network
  end
  
  def total_payroll
    characters.reduce(0) do |total, character|
      total + character.salary
    end
  end
  
  def highest_grossing_actor
    characters.max_by(&:salary)
  end
  
  def make_website
    template_letter = File.read "knight_rider_site.erb"
    erb_template = ERB.new template_letter
    site = erb_template.result(binding)
    
    Dir.mkdir("sites") unless Dir.exists? "sites"
    characters_initials = characters.map { |character| character.name[0].downcase}.join
    website = "sites/knight_rider_cast_#{characters_initials}.html"
    File.open(website, 'w') do |file|
      file.puts site
    end
  end
  
end 
