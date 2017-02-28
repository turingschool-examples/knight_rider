require 'socket'
require 'pry'

class HttpCastPage
  attr_reader :cast_list, :client
  def initialize(port, input_file_path)
    @tcp_server = TCPServer.new(port)
    @cast_list = File.read(input_file_path)
  end

  def start
    loop do
      accept_and_listen
      Response.new(@cast_list, self).respond
      break if $close == true
    end
  end

  def accept_and_listen
    @client = @tcp_server.accept
    @request_lines = []
    while line = @client.gets and !line.chomp.empty?
      @request_lines << line.chomp
    end
  end

end

class Response
  attr_reader :server, :output
  def initialize(body, server)
    @output = body
    @server = server
  end

  def respond
    server.client.puts headers_200
    server.client.puts output
    server.client.close
  end

  def headers_200
    ["http/1.1 200 OK",
    "date: #{Time.now.strftime('%a, %e %b %Y %H:%M:%S %z')}",
    "server: ruby",
    "content-type: text/html; charset=iso-8859-1",
    "content-length: #{output.length}\r\n\r\n"].join("\r\n")
  end
end

if __FILE__ == $0
  HttpCastPage.new(9292, "./io_files/html_output_file.html").start
end
