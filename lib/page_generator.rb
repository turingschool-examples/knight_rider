require 'erb'
require './lib/knight_rider'

class PageGenerator
  attr_reader :data, :template

  def initialize(data)
    @data = data
  end

  def generate_page
    actor_data = @data.characters
    html_template = File.read "templates/page_template.html.erb"
    page = ERB.new html_template
    page.result(binding)
  end

  def save_html_output
    File.open("output.html", "w+"){|file| file.write(generate_page)}
  end

end
