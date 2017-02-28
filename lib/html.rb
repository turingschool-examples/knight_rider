class HTML
  def initialize(tv_show)
    @show = tv_show
    @html = build_html
  end

  def build_html
    File.read('./data/template.html')
  end

  def print_to_file(file_name)
    html_doc = File.open('./output/' +file_name + '.html', 'w')
    # html.puts()
    html_doc.close
  end
end
