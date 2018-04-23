#!/usr/bin/env ruby

require 'commonmarker'

MD_EXTENSION = /\.md$/
HTML_EXTENSION = '.html'
HTML_DIR = File.expand_path("#{File.dirname(__FILE__)}/../pages")

filename = ARGV[0]

document = ''

def header
	<<-HEREDOC
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Cesare Ferrari</title>
		<link rel = "stylesheet" type = "text/css" href = "../styles/markdown-stylesheet.css" >
	</head>
	<body>
	HEREDOC
end

def footer
	<<-HEREDOC
	</body>
	</html>
	HEREDOC
end

document += header
content = File.read(filename)
document += CommonMarker.render_html(content, :DEFAULT)
document += footer

html_filename = "#{HTML_DIR}/#{filename.gsub(MD_EXTENSION, HTML_EXTENSION)}"

File.open(html_filename, 'w') do |file|
	file.puts document
end
