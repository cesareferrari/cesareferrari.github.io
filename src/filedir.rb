#!/usr/bin/env ruby

MD_EXTENSION = /\.md$/
HTML_EXTENSION = '.html'
HTML_DIR = File.expand_path("#{File.dirname(__FILE__)}/../pages")

filename = 'this_is_a_markdown_filename.md'

html_filename = "#{HTML_DIR}/#{filename.gsub(MD_EXTENSION, HTML_EXTENSION)}"

puts html_filename
