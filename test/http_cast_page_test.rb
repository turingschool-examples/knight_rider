require 'minitest/autorun'
require 'minitest/pride'
require './lib/http_cast_page'
require 'faraday'
require 'pry'

class HttpCastPageTest < Minitest::Test

  attr_accessor :server, :conn
  def start_up(port, input_file_path)
    $close = false
    @server = HttpCastPage.new(port, input_file_path)
    @conn = Faraday.new(:url => "http://127.0.0.1:#{port}")
  end

  def test_it_loads_html_cast_file
    input_file_path = "./io_files/html_output_file_1.html"
    server1 = HttpCastPage.new(9292, input_file_path)
    assert_instance_of String, server1.cast_list
    assert_equal output_file_1, server1.cast_list.split("\n").map {|item| item.strip}
  end

  def test_it_loads_page_to_server
    threads = []
    threads << Thread.new{server.start}
    threads << Thread.new do
      $close = true
      assert_equal predicted_output, conn.get(path).body
    end
    threads.each {|thread| thread.join}
end

  def output_file_1
    ["<html>",
    "<body>",
    "<h1>Knight Rider Cast</h1>",
    "",
    "<h2>KITT</h2>",
    "<ul>",
    "<li>Played by William Daniels</li>",
    "<li>Pontiac Trans-Am</li>",
    "<li>35 years old</li>",
    "</ul>",
    "<img src=\"https://goo.gl/lSFYQo\" width=200>",
    "",
    "</body>",
    "</html>"]
  end

end
