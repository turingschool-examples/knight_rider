require 'socket'
require 'uri'
require './lib/knight_rider'

class Server
  attr_reader :port,
              :request_lines,
              :verb,
              :user_path,
              :client,
              :response,
              :paths,
              :protocol,
              :host,
              :accept

  def initialize(port)
    @port = port
    @close_for_test = false
  end

  def run_server
    Socket.tcp_server_loop(port) do |client, _|
      read_request(client)
      sort_request
      make_header
      parse_path(client)
      define_response
      make_output
      output_to_client(client)
      close_client(client)
      break if close_for_test == true
    end
  end

  # def accept_connection(server = tcp_server)
  #   @client = server.accept
  #   puts 'client connected'
  # end

  def read_request(server = client)
    @request_lines = []
    while (line = server.gets) && !line.chomp.empty?
      request_lines << line.chomp
    end
    puts request_lines.inspect
  end

  def sort_request(request = request_lines)
    @verb = request[0].split(' ')[0]
    @user_path = requested_file(request)
    @protocol = request[0].split(' ')[2]
    @host = request[1].split(' ')[1].split(':')[0]
    @accept = request.find {|string| string.include? "Accept:"}.split(': ')[1]
  end

  def requested_file(lines = request_lines)
    request_uri = lines[0].split(' ')[1]
    URI.unescape(URI(request_uri).path)
  end
end

ser = Server.new(9291)
ser.run_server
