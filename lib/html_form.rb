require './lib/character'
require './lib/knight_rider'
require 'erb'
require 'pry'

class HtmlPageCreator
  def initialize(input_file_path, output_file_path, knight_rider)
    @input_file_path = input_file_path
    @output_file_path = output_file_path
    @knight_rider = knight_rider
  end
end

# template_letter = File.read "./io_files/html_form.erb"
# erb_template = ERB.new template_letter
#
# characters = @knight_rider.characters
#
# form_letter = erb_template.result(binding)
#
# output_letter = File.open("./io_files/html_output_file.html", "w")
# output_letter.puts(form_letter)
