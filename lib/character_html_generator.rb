require 'erb'

class CharacterHtmlGenerator

  attr_reader :characters, :erb_page, :html_page

  def initialize(characters)
    @characters = characters
  end

  def read_and_bind_erb
    @erb_page = ERB.new File.read 'knight_rider.erb'
    @html_page = erb_page.result(binding)
  end

  def make_html_page
    read_and_bind_erb

    File.open('knight_rider.html', 'w') do |file|
      file.puts html_page
    end
  end
end
