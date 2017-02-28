class HTML
  def initialize(characters)
    @characters = characters
    make_html
  end

  def make_html
    fileHtml = File.new("./html/knight_rider.html", "w+")
    fileHtml.puts '<head><style media="screen" type="text/css">'
    fileHtml.puts '/*
wahooo!!!!!!! It worked!!!
*/

html, body {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}
body {
	font-family: "Press Start 2P", cursive;

	/* W3C */
	background: linear-gradient(top, #ff3232 0%,#fcf528 16%,#28fc28 32%,#28fcf8 50%,#272ef9 66%,#ff28fb 82%,#ff3232 100%);

	/* Firefox */
	background: -moz-linear-gradient(top, #ff3232 0%, #fcf528 16%, #28fc28 32%, #28fcf8 50%, #272ef9 66%, #ff28fb 82%, #ff3232 100%);

	/* Chrome,Safari4+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ff3232), color-stop(16%,#fcf528), color-stop(32%,#28fc28), color-stop(50%,#28fcf8), color-stop(66%,#272ef9), color-stop(82%,#ff28fb), color-stop(100%,#ff3232));

	/* Chrome10+,Safari5.1+ */
	background: -webkit-linear-gradient(top, #ff3232 0%,#fcf528 16%,#28fc28 32%,#28fcf8 50%,#272ef9 66%,#ff28fb 82%,#ff3232 100%);

	background-size: 1000%;
	-moz-background-size: 1000%;
	-webkit-background-size: 1000%;	

	/* W3C */
	animation-name: fun-time-awesome;
	animation-duration: 40s;
	animation-timing-function: linear;
	animation-iteration-count: infinite;
	animation-direction: alternate;
	animation-play-state: running;

	/* Firefox: */
	-moz-animation-name: fun-time-awesome;
	-moz-animation-duration: 40s;
	-moz-animation-timing-function: linear;
	-moz-animation-iteration-count: infinite;
	-moz-animation-direction: alternate;
	-moz-animation-play-state: running;

	/* Chrome, Safari */
	-webkit-animation-name: fun-time-awesome;
	-webkit-animation-duration: 40s;
	-webkit-animation-timing-function: linear;
	-webkit-animation-iteration-count: infinite;
	-webkit-animation-direction: alternate;
	-webkit-animation-play-state: running;
}

/* W3C */
@keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}

/* Firefox */
@-moz-keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}

/* Chrome, Safari */
@-webkit-keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}


h1, h2 {
	color: #fff;
	text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;
}

#crushin {
	position: absolute;
	bottom: 10px;
	left: 10px;
	z-index: 50;
}
audio {
	position: absolute;
	bottom: 10px;
	right: 10px;
	z-index: 50;
	opacity: 0;
}
#counter {
	position: absolute;
	bottom: 10px;
	width: 100%;
	text-align: center;
	z-index: 50;
}
.face-source {
	display: none;
}
#faces-container {
	height: 100%;
}


/* mobile phone */
@media screen and (max-device-width: 480px) {
	body {
		height: 120%;
	}
	h1 {
		font-size: 25px;
	}
	h2 {
		font-size: 12px;
		top: 50px;
	}
	audio {
		opacity: 1;
		bottom: 30px;
		top: 90px;
		left: 10px;
	}
	#crushin {
		display: none;
	}
	#counter {
		top: 380px;
	}
}</style>'
    fileHtml.puts "<HTML><BODY BGCOLOR='green'>"
    fileHtml.puts '<style type="text/css">body, a:hover {cursor: url(http://cur.cursors-4u.net/cursors/cur-3/cur204.ani), url(http://cur.cursors-4u.net/cursors/cur-3/cur204.png), progress !important;}</style><a href="http://www.cursors-4u.com/cursor/2009/04/23/flaming-arrow.html" target="_blank" title="Flaming Arrow"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Flaming Arrow" style="position:absolute; top: 0px; right: 0px;" /></a>'
    fileHtml.puts "<CENTER><h1>Knight Rider Cast</h1>"
    fileHtml.puts "<iframe width=\"0\" height=\"0\" src=\"https://www.youtube.com/embed/Mo8Qls0HnWo?autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>"
    fileHtml.puts '<img src="http://www.textfiles.com/underconstruction/MoMotorCity4109construct.gif" width=\"70%\">'
    character_format(fileHtml)
    fileHtml.puts "</CENTER></BODY></HTML>"
    fileHtml.close()
  end

  def character_format(fileHtml)
    @characters.each do |character|
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