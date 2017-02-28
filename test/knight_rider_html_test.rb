require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider_html'


class KnightRiderHtmlTest < Minitest::Test

  def setup 
    html_writer = KnightRiderHtml.new
    output = html_writer.write_html("./data/test_html_output.html")
    @reader = File.read("./data/test_html_output.html")
  end

  def test_it_exists
    html_writer = KnightRiderHtml.new
    assert_instance_of KnightRiderHtml, html_writer
  end

  def test_it_initiazes_with_KnightRider_instance
    html_writer = KnightRiderHtml.new
    assert_instance_of KnightRider, html_writer.knight_rider
  end

  def test_it_can_create_html_file
    KnightRiderHtml.new.write_html("./data/test_html_output.html")
    refute @reader.empty?
  end

  def test_print_cast_prints_cast_header
    assert @reader.include?("<h1>Knight Rider Cast</h1>")
  end

  def test_print_cast_prints_character_names    
    assert @reader.include?("<h2>Character Name: KITT</h2>")
    assert @reader.include?("<h2>Character Name: Michael Knight</h2>")
    assert @reader.include?("<h2>Character Name: Devon Miles</h2>")
  end

  def test_print_cast_prints_character_actors    
    assert @reader.include?("<h3>Actor: William Daniels</h3>")
    assert @reader.include?("<h3>Actor: David Hasselhoff</h3>")
    assert @reader.include?("<h3>Actor: Edward Mulhare</h3>")
  end

  def test_print_cast_prints_character_descriptions
    assert @reader.include?("<h3>Description: Pontiac Trans-Am</h3>")
    assert @reader.include?("<h3>Description: A special type of hero</h3>")
    assert @reader.include?("<h3>Description: FLAG spokesman and mission coordinator</h3>")
  end

  def test_print_cast_prints_character_ages
    assert @reader.include?("<h3>Age: 35</h3>")
    assert @reader.include?("<h3>Age: 65</h3>")
    assert @reader.include?("<h3>Age: 94</h3>")
  end

  def test_print_cast_formats_images_correctly
    assert @reader.include?("<img height= '250' src= https://goo.gl/lSFYQo> </img>")
    assert @reader.include?("<img height= '250' src= https://goo.gl/Qk0pwL> </img>")
    assert @reader.include?("<img height= '250' src= https://goo.gl/JsvAuV> </img>")    
  end
end