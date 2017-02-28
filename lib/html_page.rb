require 'pry'
require 'erb'
require './lib/knight_rider'


simple_template = knight_rider_cast.erb

renderer = ERB.new(simple_template)
puts output = renderer.result()

# erb_template = ERB.new knight_rider_cast.erb
