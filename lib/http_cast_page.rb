require 'pry'

class HttpCastPage
  attr_reader :cast_list
  def initialize(port, input_file_path)
    @cast_list = File.read(input_file_path)
  end

end
