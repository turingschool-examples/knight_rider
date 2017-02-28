require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider_html'


class KnightRiderHtmlTest < Minitest::Test

  def setup 
    html_writer = KnightRiderHtml.new
    @output = html_writer.write_html
  end

  def test_it_exists
    html_writer = KnightRiderHtml.new
    assert_instance_of KnightRiderHtml, html_writer
  end

  def test_it_initiazes_with_KnightRider_instance
    html_writer = KnightRiderHtml.new
    assert_instance_of KnightRider, html_writer.knight_rider
  end

  def can_create_html_file
    file = KnightRiderHtml.write_html("./data/test_html_output.html")
    assert_instance_of File, file
  end

  


end