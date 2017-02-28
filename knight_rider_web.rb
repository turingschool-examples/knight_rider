require 'socket'
require './lib/knight_rider'
require './lib/character'
class KnightRiderWebPage
  attr_reader :tcp_server, :kitt, :michael_knight, :devon_miles, :kr

  def initialize
    @tcp_server = TCPServer.new(9292)
    @kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    @michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    @devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    @kr = KnightRider.new([kitt, michael_knight, devon_miles], "Glenn Larson", "NBC")
  end

  def request
    while @client = tcp_server.accept
      puts "Ready for a request"
      @request_lines = []
      while line = @client.gets and !line.chomp.empty?
        @request_lines << line.chomp
      end

      @title = "Knight Rider Cast"
      @character1 = "Name: #{kr.characters.first.name}<br>
                     Actor: #{kr.characters.first.actor}<br>
                     Description: #{kr.characters.first.description}<br>
                     <img src = #{kr.characters.first.headshot_url}>"
      @character2 = "Name: #{kr.characters[1].name}<br>
                     Actor: #{kr.characters[1].actor}<br>
                     Description: #{kr.characters[1].description}<br>
                     <img src = #{kr.characters[1].headshot_url}>"
      @character3 = "Name: #{kr.characters.last.name}<br>
                      Actor: #{kr.characters.last.actor}<br>
                      Description: #{kr.characters.last.description}<br>
                      <img src = #{kr.characters.last.headshot_url}>"
      output = "<html><head></head><body><h1>#{@title}</h1>#{@character1} <br> #{@character2} <br> #{@character3}</body></html>"
      headers = ["http/1.1 200 ok",
                "date: #{Time.now.strftime('%a, %e %b %Y %H:%M:%S %z')}",
                "server: ruby",
                "content-type: text/html; charset=iso-8859-1",
                "content-length: #{output.length}\r\n\r\n"].join("\r\n")
      @client.puts headers
      @client.puts output

    end
    @client.close
  end
end

kr = KnightRiderWebPage.new
kr.request