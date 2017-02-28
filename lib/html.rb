class HTML
  def initialize(knight_rider)
  end

  def print_to_file(file_name)
    html_doc = File.open('./output/' +file_name + '.html', 'w')
    # html.puts()
    html_doc.close
  end
end