require 'pry'
require 'erb'
require './lib/knight_rider'


# simple_template = knight_rider_cast.erb
#
# renderer = ERB.new(simple_template)
# puts output = renderer.result()

# erb_template = ERB.new knight_rider_cast.erb

require 'erb'

template = File.read("knight_rider_cast.html.erb")

renderer = ERB.new(template)

class Message
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def get_binding
    binding()
  end

end

message = Message.new 'John'

File.open('result.html', 'w') do |f|
  f.write renderer.result message.get_binding
end
