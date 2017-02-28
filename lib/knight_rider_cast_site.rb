# Run site locally at http://127.0.0.1:9292
# (cont.) after running program in terminal
#
# Exit program with ctrl+C

require './lib/character'
require 'socket'

kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")

tcp_server = TCPServer.new(9292)
loop do
client = tcp_server.accept

puts "Ready for a request"
request_lines = []
while line = client.gets and !line.chomp.empty?
  request_lines << line.chomp
end

puts "Got this request:"
puts request_lines.inspect

puts "Sending response."
response = "<pre>" + request_lines.join("\n") + "</pre>"
output = "<html><head><u><font size=7>Knight Rider Cast</font></u></head><br><br><img src=#{kitt.headshot_url} width=100 height=100><br><body>Name: #{kitt.name}, Played by: #{kitt.actor}, Description: #{kitt.description}, Birth year: #{kitt.birth_year}, Salary: $#{kitt.salary}</body><br>
          <br><img src=#{michael_knight.headshot_url} width=100 height=100><br><body>Name: #{michael_knight.name}, Played by: #{michael_knight.actor}, Description: #{michael_knight.description}, Birth year: #{michael_knight.birth_year}, Salary: $#{michael_knight.salary}</body><br>
          <br><img src=#{devon_miles.headshot_url} width=100 height=100><br><body>Name: #{devon_miles.name}, Played by: #{devon_miles.actor}, Description: #{devon_miles.description}, Birth year: #{devon_miles.birth_year}, Salary: $#{devon_miles.salary}</body><br>
          <br><br><iframe width=280 height=157 src=https://www.youtube.com/embed/GbfVmzF7N4g frameborder=0 allowfullscreen></iframe></html>"
headers = ["http/1.1 200 ok",
          "date: #{Time.now.strftime('%a, %e %b %Y %H:%M:%S %z')}",
          "server: ruby",
          "content-type: text/html; charset=iso-8859-1",
          "content-length: #{output.length}\r\n\r\n"].join("\r\n")
client.puts headers
client.puts output

puts ["Wrote this response:", headers, output].join("\n")
client.close
puts "\nResponse complete, exiting."
end