require 'pry'
require 'erb'

knight_rider_cast = File.open "html_page.erb"
erb_template = ERB.new knight_rider_cast.erb
