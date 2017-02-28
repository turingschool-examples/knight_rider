module TestSetup
  def setup
    input_file_path = "./io_files/html_form.erb"
    output_file_path = "./io_files/html_output_file.html"
    kitt = Character.new("KITT", "William Daniels",
    "Pontiac Trans-Am", 1982,
    "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight",
    "David Hasselhoff", "A special type of hero",
    1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
    kr_cast_page = HtmlPageCreator.new(input_file_path, output_file_path, knight_rider)
    kr_cast_page.write_html_to_output_file
  end
end
