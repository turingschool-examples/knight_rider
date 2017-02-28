class HTML
  def initialize(characters)
    @characters = characters
    make_html
  end

  def make_html
    fileHtml = File.new("./html/knight_rider.html", "w+")
    fileHtml.puts "<HTML><BODY BGCOLOR='green'>"
    fileHtml.puts "<CENTER><h1>Knight Rider Cast</h1>"
    fileHtml.puts "<iframe width=\"0\" height=\"0\" src=\"https://www.youtube.com/embed/Mo8Qls0HnWo?autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>"
    character_format(fileHtml)
    fileHtml.puts "</CENTER></BODY></HTML>"
    fileHtml.close()
  end

  def character_format(fileHtml)
    @characters.each do |character|
      fileHtml.puts "<div>"
      fileHtml.puts "<hr>"
      fileHtml.puts"<p><h2>Character : #{character.name}</h2></p>"
      fileHtml.puts"<p>Acted expertly by : #{character.actor}</p>"
      fileHtml.puts"<p>This their role : #{character.description}</p>"
      fileHtml.puts "</div>"
      fileHtml.puts"<p>and makes this many shekels to do it : <h1 style=\"color:red\">$#{character.salary}</h1></p>"
      fileHtml.puts "<img src=#{character.headshot_url} width=\"70%\">"
      fileHtml.puts"<p>Good Job #{character.actor}</p>"
    end
  end
end