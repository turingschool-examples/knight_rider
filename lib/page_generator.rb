require 'erb'
require './lib/knight_rider'

class PageGenerator
  attr_reader :data, :template

  def initialize(data)
    @data = data
    @template = File.read("templates/page_template.erb")
  end

  def load_page

  end


end
