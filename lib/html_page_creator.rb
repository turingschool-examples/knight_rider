require './lib/character'
require './lib/knight_rider'
require 'erb'
require 'pry'

class HtmlPageCreator
  attr_reader :input_file_path, :output_file_path, :characters, :cast_page
  def initialize(input_file_path, output_file_path, knight_rider)
    @input_file_path = input_file_path
    @output_file_path = output_file_path
    @characters = knight_rider.characters
  end

  def erb_template
    template_cast_page = File.read @input_file_path
    ERB.new template_cast_page
  end

  def insert_characters_into_template
    erb_template.result(binding)
  end

  def write_html_to_output_file
    cast_content = insert_characters_into_template
    @cast_page = File.open(output_file_path, "w")
    @cast_page.puts(cast_content)
  end

end
