require 'erb'
class HTML

  attr_reader :show, :html
  def initialize(tv_show)
    @show = tv_show
    @html = build_html
  end

  def build_html
    template = File.read('./data/template.html')
    erb_template = ERB.new(template)
    erb_template.result(binding)
  end

  def print_to_file(file_name)
    html_doc = File.open('./output/' +file_name + '.html', 'w')
    html_doc.puts(html)
    html_doc.close
  end
end
