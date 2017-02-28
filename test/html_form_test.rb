require 'minitest/autorun'
require 'minitest/pride'
require './lib/html_form'
require './lib/character'
require './lib/knight_rider'
require 'erb'
require 'pry'

class HtmlPageCreatorTest < Minitest::Test

  def setup
    @input_file_path = "./io_files/html_form.erb"
    output_file_path = "./io_files/html_output_file.html"
    @kitt = Character.new("KITT", "William Daniels",
    "Pontiac Trans-Am", 1982,
    "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight",
    "David Hasselhoff", "A special type of hero",
    1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    knight_rider = KnightRider.new([@kitt, @michael_knight, @devon_miles], "Glen Larson", "NBC")
    @kr_cast_page = HtmlPageCreator.new(@input_file_path, output_file_path, knight_rider)
  end

  def test_it_exists
    assert_instance_of HtmlPageCreator, @kr_cast_page
  end

  def test_default_values
    assert_instance_of Array, @kr_cast_page.characters
    assert_equal 3, @kr_cast_page.characters.count
    assert_equal @kitt, @kr_cast_page.characters.first
    assert_equal "./io_files/html_form.erb", @kr_cast_page.input_file_path
    assert_equal "./io_files/html_output_file.html", @kr_cast_page.output_file_path
  end

  def test_opening_erb_file
    assert_instance_of ERB, @kr_cast_page.erb_template
  end

  def test_insert_characters_into_template
    assert_instance_of String, @kr_cast_page.insert_characters_into_template
  end

  def test_writing_html_to_file
    @kr_cast_page.write_html_to_output_file
    assert_instance_of File, @kr_cast_page.cast_page
  end

  def test_it_runs_with_one_cast_member
    output_file_path = "./io_files/html_output_file_1.html"
    knight_rider = KnightRider.new([@kitt], "Glen Larson", "NBC")
    kr_cast_page1 = HtmlPageCreator.new(@input_file_path, output_file_path, knight_rider)
    kr_cast_page1.write_html_to_output_file
    assert_instance_of File, kr_cast_page1.cast_page
  end

  def test_it_runs_with_two_cast_members
    output_file_path = "./io_files/html_output_file_2.html"
    knight_rider = KnightRider.new([@kitt, @michael_knight], "Glen Larson", "NBC")
    kr_cast_page2 = HtmlPageCreator.new(@input_file_path, output_file_path, knight_rider)
    kr_cast_page2.write_html_to_output_file
    assert_instance_of File, kr_cast_page2.cast_page
  end

end
