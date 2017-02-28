require 'socket'
require 'uri'
require './lib/knight_rider'

class Server

  attr_accessor :close_for_test
  attr_reader :port,
              :request_lines,
              :header,
              :output

  def initialize(port)
    @port = port
    @close_for_test = false
  end

  def run_server
    Socket.tcp_server_loop(port) do |client, _|
      read_request(client)
      make_header
      define_response
      make_output
      output_to_client(client)
      close_client(client)
      break if close_for_test == true
    end
  end

  def read_request(server = client)
    @request_lines = []
    while (line = server.gets) && !line.chomp.empty?
      request_lines << line.chomp
    end
    puts request_lines.inspect
  end

  def make_header
    @header = ["http/1.1 200 ok",
               "server: ruby",
               "content-type: text/html; charset=iso-8859-1"]
    header.join("\r\n")
  end
end

def define_response
    @response = 'hi'
  end

  def make_output
    @output = "<html><head></head><body><pre>#{@response}</pre></body></html>"
  end

  def output_to_client(client)
    client.puts header
    client.puts output
  end

  def close_client(client)
    client.close
  end

# ser = Server.new(9291)
# ser.run_server
